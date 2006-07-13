/* Show configuration application */
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
#include "i2cdrv.h"

#define SC_LINES 2 /* Be careful with number of lines! */

static bit sc_state_changed = 1;
unsigned char sc_curr_line = 0;

const char* sc_lines[] = {
    "Engine delay: ",
    "Start time:   ",
    "Start delay:  ",
    "Restart delay:",
    "Return delay: ",
    NULL
}; 

void app_showconf()
{
    
    if(kbd_hit())
    {
        switch(kbd_get_key())
        {
            case K_ESCAPE:
            case K_ESCAPE_LONG:
                lcd_clear();
                app_current = A_MENU;
                sc_state_changed = 1;
                break;
            case K_UP:
                sc_curr_line <= 0 ? 0 : sc_curr_line--;
                sc_state_changed = 1;
                break;
            case K_DOWN:
                sc_curr_line >= SC_LINES ? 0 : sc_curr_line++;
                sc_state_changed = 1;
                break;
            case K_UP_LONG:
            case K_DOWN_LONG:
            case K_ENTER_LONG:
                break;
            default:
                break;
        }
    }
    else
    {
        if(sc_state_changed)
        {
            char text[21];
            const char line[4] = {0, 2, 1, 3};
            unsigned char value;
            unsigned char i;
            for(i = 0; i <= 2; i++)
            {
                value = (unsigned char)*((unsigned char*)(&current_config) + sc_curr_line + i);
                sprintf(text, "%s%3bu", sc_lines[sc_curr_line + i], value);
                lcd_putstring(0, line[i+1], text);
            }
            //lcd_putstring(0, 1, sc_lines[sc_curr_line]);
            //lcd_putstring(0, 2, sc_lines[sc_curr_line + 1]);
            //lcd_putstring(0, 3, sc_lines[sc_curr_line + 2]);
            sc_state_changed = 0;
        }
    }
}
