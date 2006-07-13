/* Set time application */
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
#include "configuration.h"
#include "rtcservice.h"

/* TEMPORARY */
extern unsigned char clock_hour;
extern unsigned char clock_min;
extern unsigned char clock_sec;
extern unsigned char clock_day;
extern unsigned char clock_month;
extern unsigned char clock_year;
/* - END OF TEMP -*/

static bit sc_state_changed = 1;
static unsigned char sc_curr_col = 0;
static unsigned char sc_curr_max = 0;
static unsigned char sc_curr_val = 0;

static unsigned char sc_current_values[6] = { 2,2,2,2,2,2 };

static bit first_time = 1;
static bit cursor_on = 0;

char sc_text[21]; /* displayed text buffer */

const unsigned char sc_max_values[6] = {
    99, /* year */
    12, /* month */
    31, /* day */
    23, /* hour */
    59, /* minutes */
    59 /* seconds */
};

/* load time from clock application */
void load_time()
{
    sc_current_values[3] = clock_hour;
    sc_current_values[4] = clock_min;
    sc_current_values[5] = clock_sec;
    sc_current_values[2] = clock_day;
    sc_current_values[1] = clock_month;
    sc_current_values[0] = clock_year;    
}

/* store time to clock application */
void store_time()
{
    clock_hour  = sc_current_values[3];
    clock_min   = sc_current_values[4];
    clock_sec   = sc_current_values[5];
    clock_day   = sc_current_values[2];
    clock_month = sc_current_values[1];
    clock_year  = sc_current_values[0];
    
    /* Save new time in RTC */
    rtc_set_time(clock_year,
                 clock_month,       
                 clock_day,
                 clock_hour,
                 clock_min,
                 clock_sec);
}

void app_setclock()
{
    if(first_time)
    {
        load_time(); /* !!! */
        sc_curr_col = 0;
        sc_curr_max = sc_max_values[sc_curr_col];
        sc_curr_val = sc_current_values[sc_curr_col];
        first_time = 0;
        timer_snap(T_CURSOR);
    }

    if(kbd_hit())
    {
        switch(kbd_get_key())
        {
            case K_ESCAPE:
            case K_ESCAPE_LONG:
                lcd_clear();
                app_current = A_MENU;
                sc_state_changed = 1;
                first_time = 1; /* First time every time we enter here */
                break;
            case K_UP:
                sc_curr_val >= sc_curr_max ? 0 : sc_curr_val++;
                sc_state_changed = 1;
                break;
            case K_DOWN:
                sc_curr_val <= 0 ? 0 : sc_curr_val--;
                sc_state_changed = 1;
                break;
            case K_UP_LONG:
            case K_DOWN_LONG:
                break;
            case K_ENTER:
            case K_ENTER_LONG:
                if(sc_curr_col < 5)
                {
                    sc_curr_col++;
                    sc_curr_val = sc_current_values[sc_curr_col];
                    sc_curr_max = sc_max_values[sc_curr_col];
                }
                else
                {
                    store_time(); /* !!! */
                    lcd_clear();
                    first_time = 1;
                    app_current = A_MENU;
                }
                sc_state_changed = 1;
                break;
            default:
                break;
        }
    }
    else
    {
        if(timer_is_timeout(T_CURSOR, 60))
        {
            if(cursor_on)
            {
                lcd_putstring(1 + (sc_curr_col * 3), 1, "_");
                cursor_on = 0;
            }
            else
            {
                lcd_putstring(0, 1, sc_text);
                cursor_on = 1; 
            }
            timer_snap(T_CURSOR);
        }

        if(sc_state_changed)
        {
            
            const char line[4] = {0, 2, 1, 3};
            
            sc_current_values[sc_curr_col] = sc_curr_val;

            sprintf(sc_text, "%02bu/%02bu/%02bu %02bu:%02bu:%02bu",
                    sc_current_values[0],
                    sc_current_values[1],
                    sc_current_values[2],
                    sc_current_values[3],
                    sc_current_values[4],
                    sc_current_values[5]
                );

            lcd_putstring(0, 1, sc_text);

            sc_state_changed = 0;
        }
    }

    
}