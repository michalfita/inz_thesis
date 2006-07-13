/* Main screen during idle */
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

void app_nothing()
{
    if(kbd_hit())
    {
        switch(kbd_get_key())
        {
            case K_ESCAPE_LONG:
            case K_UP_LONG:
            case K_DOWN_LONG:
            case K_ENTER_LONG:
                app_current = A_MENU;
                break;
            default:
                break;
        }
    }
}
