#include <reg515.h>
#include <intrins.h>
#include "i2cdrv.h"

unsigned char _i2c_error;      // bit array of error types

void _I2CBitDly(void)         // wait 4.7uS, or thereabouts
{                             // tune to xtal. This works at 11.0592MHz
	//asm("NOP");             // delay is 5.4uS, only 4.3uS without
	_nop_();                  // this tries on 12 MHz (2x NOP)
	_nop_();
	return;
}

void _I2CSCLHigh(void)        // set SCL high, and wait for it to go high
{
  register int err;
  I2C_SCL = 1;
  while (! I2C_SCL)
  {
    err++;
    if (!err)
    {
      _i2c_error &= 0x02;     // SCL stuck, something's holding it down
      return;
    }
  }
}

void I2CSendAddr(unsigned char addr, unsigned char rd)
{
  I2C_SCL = 1;
  _I2CBitDly();
  I2C_SDA = 0;                // generate start
  _I2CBitDly();
  I2C_SCL = 0;
  _I2CBitDly();
  I2CSendByte(addr + rd); // send address byte
}

void I2CSendByte(unsigned char bt)
{
  register unsigned char i;
  for (i=0; i<8; i++)
  {
    if (bt & 0x80) I2C_SDA = 1;      // send each bit, MSB first
    else I2C_SDA = 0;
    _I2CSCLHigh();
    _I2CBitDly();
    I2C_SCL = 0;
    _I2CBitDly();
    bt = bt << 1;
  }
  I2C_SDA = 1;                       // listen for ACK
  _I2CSCLHigh();
  _I2CBitDly();
  if (I2C_SDA)
    _i2c_error &= 0x01;          // ack didn't happen, may be nothing out there
  I2C_SCL = 0;
  _I2CBitDly();
}

unsigned char _I2CGetByte(unsigned char lastone) // lastone == 1 for last byte
{
  register unsigned char i, res;
  res = 0;
  for (i=0; i<8; i++)          // each bit at a time, MSB first
  {
    _I2CSCLHigh();
    _I2CBitDly();
    //res *= 2;
    res <<= 1;
    if (I2C_SDA) res++;
    I2C_SCL = 0;
    _I2CBitDly();
  }
  I2C_SDA = lastone;             // send ACK according to 'lastone'
  _I2CSCLHigh();
  _I2CBitDly();
  I2C_SCL = 0;
  I2C_SDA = 1;
  _I2CBitDly();
  return(res);
}

void I2CSendStop(void)
{
  I2C_SDA = 0;
  _I2CBitDly();
  _I2CSCLHigh();
  _I2CBitDly();
  I2C_SDA = 1;
  _I2CBitDly();
}

// test code
//void main(void)
//{
//  unsigned char b;
//  I2CSendAddr(1,WRITE);
//  I2CSendByte(0);
//  I2CSendStop();
//  I2CSendAddr(1,READ);
//  b = I2CGetByte();
//  b = I2CGetLastByte();
//  I2CSendStop();
//}

//   example of setting a clock follows:
//
//          I2CSendAddr(I2CCLK, WRITE);
//          I2CSendByte(0);                 /* address */
//          I2CSendByte(0x80);              /* stop counting */
//          I2CSendStop();
//          I2CSendAddr(I2CCLK, WRITE);
//          I2CSendByte(2);                 /* address */
//          I2CSendByte(sec);
//          I2CSendByte(min);
//          I2CSendByte(hour);
//          I2CSendByte(y);
//          I2CSendByte(month);
//          I2CSendStop();
//          I2CSendAddr(I2CCLK, WRITE);
//          I2CSendByte(0);                 /* address */
//          I2CSendByte(0x00);              /* start counting */
//          I2CSendStop();
//
//
//   example of reading a clock follows
//
//          I2CSendAddr(I2CCLK, WRITE);
//          I2CSendByte(2);
//          I2CSendAddr(I2CCLK, READ);
//          sec  = I2CGetByte();
//          min  = I2CGetByte();
//          hour = I2CGetByte();
//          b    = I2CGetByte();
//          c    = I2CGetLastByte();
//          I2CSendStop();

