/* Clock Application */
#include <reg515.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <intrins.h>
#include "timer.h"
#include "lcddrv.h"
#include "kbddrv.h"
#include "applications.h"
#include "rtcservice.h"

bit display_clock = 0;
unsigned char clock_hour = 0;
unsigned char clock_min = 0;
unsigned char clock_sec = 0;
unsigned char clock_day = 0;
unsigned char clock_month = 0;
unsigned char clock_year = 0;

/* Only one place allowed for this extern */
extern bit czy_przerwanie;

void clock_to_str(char *str)
{
    //  YY/MM/DD HH:MM:SS (17 chars)
    str[ 0] = (clock_year / 10) + 0x30;
    str[ 1] = (clock_year % 10) + 0x30;
    str[ 2] = '/';
    str[ 3] = (clock_month / 10) + 0x30;
    str[ 4] = (clock_month % 10) + 0x30;
    str[ 5] = '/';
    str[ 6] = (clock_day / 10) + 0x30;
    str[ 7] = (clock_day % 10) + 0x30;
    str[ 8] = ' ';
    str[ 9] = (clock_hour / 10) + 0x30;
    str[10] = (clock_hour % 10) + 0x30;
    str[11] = ':';
    str[12] = (clock_min / 10) + 0x30;
    str[13] = (clock_min % 10) + 0x30;
    str[14] = ':';
    str[15] = (clock_sec / 10) + 0x30;
    str[16] = (clock_sec % 10) + 0x30;
}

bit clock_second_elapsed()
{
    static int counter = 0;
    if (czy_przerwanie)
    {
        czy_przerwanie = 0;
        counter++;        
    }
    else 
        return 0; /* false */
    if (counter >= 100) 
    {
        counter = 0;
        return 1; /* true */
    }
    return 0; /* false */
}

void clock_next_second()
{
    /* Do this every one second to increment time */
    if (timer_is_timeout_snap(T_SECOND, 100))
    //if(0 == (timer_get() % 1000));
    {
        clock_sec++;
        if(59 < clock_sec)
        {
            clock_min++;
            clock_sec %= 60;
        }
        if(59 < clock_min)
        {
            clock_hour++;
            clock_min %= 60;
        }
        if(23 < clock_hour)
        {
            clock_day++;
            clock_hour %= 24;
        }
        if(30 < clock_day)
        {
            clock_month++;
            clock_day %= 31; /* this has to be much smarter */
        }
        if(12 < clock_month)
        {
            clock_year = (clock_year++) % 99;
            clock_month %= 12;
        }
    }
}

void clock_initialize()
{
    rtc_get_time(&clock_year,
                  &clock_month,       
                  &clock_day,
                  &clock_hour,
                  &clock_min,
                  &clock_sec);
}

void app_clock()
{
    //static bit clock_display = 0;
    static char xdata tmp_buf[20] = "   YY/MM/DD HH:MM:SS";
    static unsigned char clock_iter = 0;
    static bit first_time = 1;

    /* Do this only for first time */
    if(first_time) {
        first_time = 0;
        clock_initialize();
        timer_snap(T_CLOCK);
        timer_snap(T_SECOND);        
    }

    /* Check whether one second elapsed since last time, and then
       increase second in our clock */
    if(clock_second_elapsed()) clock_next_second();

    /* Do this after 2000 ms when in display mode */
    if(display_clock)
    {
        if(timer_is_timeout(T_CLOCK, 10))
        {               
            if (30 > clock_iter)
            {
                if(0 == (clock_iter % 10))
                {
                    clock_to_str(tmp_buf + 3);
                    lcd_putline(0, tmp_buf);
                }
                clock_iter++;
            } else
            {
                clock_iter = 0;
                display_clock = 0;
            }
            timer_snap(T_CLOCK);
        }
    } 
    /* Do this after 8000 ms when in non display mode */
    else if(timer_is_timeout(T_CLOCK, 900))
    {
        display_clock = 1;
        timer_snap(T_CLOCK);
    }
}
