#include <reg515.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <intrins.h>
#include "timer.h"
#include "lcddrv.h"
#include "kbddrv.h"
#include "menu.h"
#include "applications.h"
#include "i2cdrv.h"
#include "serial.h"

void rtc_get_time(unsigned char *year,
                  unsigned char *month,       
                  unsigned char *day,
                  unsigned char *hour,
                  unsigned char *minute,
                  unsigned char *second)
{
    unsigned char r_sec, r_min, r_hour, r_b, r_c;

    /* Load time values from RTC by I2C*/
    //I2C_SDA = 0;
    //I2C_SCL = 0;
    //_nop_();
    I2CSendAddr(I2CCLK, I2C_WRITE);
    I2CSendByte(2);
    I2CSendAddr(I2CCLK, I2C_READ);
    r_sec  = I2CGetByte();
    r_min  = I2CGetByte();
    r_hour = I2CGetByte();
    r_b    = I2CGetByte();
    r_c    = I2CGetLastByte();
    I2CSendStop();

    if(_i2c_error != 0) {
        lcd_putstring(2, 3, "I2C ERROR!");
    }

    /* Convert data to proper values */
    *second = ((r_sec  >> 4) * 10) + (r_sec  & 0x0F);
    *minute = ((r_min  >> 4) * 10) + (r_min  & 0x0F);
    *hour   = (((r_hour & 0x30) >> 4) * 10) + (r_hour & 0x0F);
    *day    = (((r_b & 0x30) >> 4) * 10) + (r_b & 0x0F);
    *month  = (((r_c & 0x30) >> 4) * 10) + (r_c & 0x0F);
    *year   = (r_b & 0xC0) >> 6;
}

void rtc_set_time(unsigned char year,
                  unsigned char month,       
                  unsigned char day,
                  unsigned char hour,
                  unsigned char minute,
                  unsigned char second)
{
    unsigned char r_sec, r_min, r_hour, r_b, r_c;

    /* Convert data to proper values */
    //*second = ((r_sec  >> 4) * 10) + (r_sec  & 0x0F);
    r_sec   = ((second / 10) << 4) | ((second % 10) & 0x0F);

    //*minute = ((r_min  >> 4) * 10) + (r_min  & 0x0F);
    r_min   = ((minute / 10) << 4) | ((minute % 10) & 0x0F);

    //*hour   = ((r_hour >> 4) * 10) + (r_hour & 0x0F);
    r_hour  = 0x7F & (((hour / 10) << 4) | ((hour % 10) & 0x0F));

    //*day    = (((r_b & 0x30) >> 4) * 10) + (r_b & 0x0F);
    //*month  = (((r_c & 0x30) >> 4) * 10) + (r_c & 0x0F);
    //*year   = (r_b & 0xC0) >> 6;

    r_b = ((year % 4) << 6) | ((day / 10) << 4) | ((day % 10) & 0x0F);
    r_c = 0x1F & (((month / 10) << 4) | ((month % 10) & 0x0F));

    /* Load time values to RTC by I2C*/
    //I2C_SDA = 0;
    //I2C_SCL = 0;
    //_nop_();
    I2CSendAddr(I2CCLK, I2C_WRITE);
    I2CSendByte(0);                 /* address */
    I2CSendByte(0x80);              /* stop counting */
    I2CSendStop();

    I2CSendAddr(I2CCLK, I2C_WRITE);
    I2CSendByte(2);
    //I2CSendAddr(I2CEEPROM, I2C_WRITE);
    I2CSendByte(r_sec);
    I2CSendByte(r_min);
    I2CSendByte(r_hour);
    I2CSendByte(r_b);
    I2CSendByte(r_c);
    I2CSendStop();

    I2CSendAddr(I2CCLK, I2C_WRITE);
    I2CSendByte(0);                 /* address */
    I2CSendByte(0x00);              /* start counting */
    I2CSendStop();

    if(_i2c_error != 0) {
        lcd_putstring(2, 3, "I2C ERROR!");
    }
}		  
