#ifndef __I2C_H__
#define __I2C_H__

extern unsigned char _i2c_error;

#ifndef I2C_READ
    #define I2C_READ   1
#endif

#ifndef I2C_WRITE
    #define I2C_WRITE  0
#endif

#ifndef I2CCLK
    #define I2CCLK 0xA0
#endif

#ifndef I2CEEPROM
    #define I2CEEPROM 0xAE
#endif

#ifndef I2C_SCL
    // static bit I2C_SCL  @ 0x96;
	sbit I2C_SCL = P4^0;
#endif

#ifndef I2C_SDA
    // static bit I2C_SDA  @ 0x97;
	sbit I2C_SDA = P4^1;
#endif

void          _I2CBitDly(void);
void          _I2CSCLHigh(void);
void           I2CSendAddr(unsigned char addr, unsigned char rd);
void           I2CSendByte(unsigned char bt);
unsigned char _I2CGetByte(unsigned char lastone);
void           I2CSendStop(void);

#define I2CGetByte()     _I2CGetByte(0)
#define I2CGetLastByte() _I2CGetByte(1)

#endif /* __I2C_H__ */

