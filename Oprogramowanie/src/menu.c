/* Menu System */
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
#include "relays.h"

const menu_t main_menu[];

static bit menu_changed = 1;

/* Declarations of functions used by menu */
void leave_menu();
void show_config();
void set_clock();

const menu_t serv_menu[] = {
    {"Relay 1 ON    ",   relay1_on,   NULL},
    {"Relay 1 OFF   ",   relay1_off,  NULL},
    {"Relay 2 ON    ",   relay2_on,   NULL},
    {"Relay 2 OFF   ",   relay2_off,  NULL},
    {"Relay 3 ON    ",   relay3_on,   NULL},
    {"Relay 3 OFF   ",   relay3_off,  NULL},
    {"Relay 4 ON    ",   relay4_on,   NULL},
    {"Relay 4 OFF   ",   relay4_off,  NULL},
    {"Relay 5 ON    ",   relay5_on,   NULL},
    {"Relay 5 OFF   ",   relay5_off,  NULL},
    {"All Relays OFF",   relays_off,  NULL},
    {"Exit          ",   NULL,   main_menu},
    {NULL,               NULL,   NULL},
};

const menu_t sub_menu[] = {
    {"Engine delay  ",   NULL,   NULL}, /* Delay time before engine will be started */
    {"Start time    ",   NULL,   NULL}, /* Time how long start signal have to be hold */
    {"Start delay   ",   NULL,   NULL}, /* Delay between two start signals in case of failed start */
    {"Return delay  ",   NULL,   NULL}, /* Delay time before normal powering will be returned */
    {"Date/Time     ",   set_clock,   NULL},
    {"Show current  ",   show_config,   NULL},
    {"Factory Reset ",   NULL,   NULL},
    {"Exit          ",   NULL,   main_menu},
    {NULL,               NULL,   NULL},
};

const menu_t main_menu[] = {
    {"Status        ",   NULL,   NULL},
    {"Applications  ",   NULL,   NULL},
    {"Service/Tests ",   NULL,   serv_menu},
    {"Configure     ",   NULL,   sub_menu},
    {"Leave menu    ",   leave_menu,   NULL},
    {NULL,               NULL,   NULL},
};

/*static*/ menu_keys_t menu_curr_key = INITIAL;
static char menu_pos = 0;
static menu_t *menu_current = main_menu;

/* Implementations of functions used by menu */
void leave_menu()
{
    lcd_clear();
    app_current = A_NOTHING;
    menu_curr_key = NONE;
    menu_changed = 1;
}

void show_config()
{
    lcd_clear();
    app_current = A_SHOWCONF;
    menu_curr_key = NONE;
    menu_changed = 1;
}

void set_clock()
{
    lcd_clear();
    app_current = A_DATETIMESET;
    menu_curr_key = NONE;
    menu_changed = 1;
}

/* Functions used by menu subsystem */
void menu_show(unsigned char pos)
{
    if(pos > 0) lcd_putstring(2, 2, menu_current[pos-1].name);
    else lcd_putstring(2, 2, "                  ");
    
	lcd_putstring(2, 1, menu_current[pos].name);
    lcd_putstring(0, 1, "~");
    
    if(menu_current[pos+1].name) lcd_putstring(2, 3, menu_current[pos+1].name);
    else lcd_putstring(2, 3, "                  ");
    
    return;
}

menu_keys_t menu_check_keys()
{
    menu_keys_t detected_key = NONE;
    if(kbd_hit())
    {
        switch(kbd_get_key())
        {
            case K_ESCAPE:
            case K_ESCAPE_LONG:
                detected_key = ESCAPE;
                break;
            case K_UP:
            case K_UP_LONG:
                detected_key = UP;
                break;
            case K_DOWN:
            case K_DOWN_LONG:
                detected_key = DOWN;
                break;
            case K_ENTER:
            case K_ENTER_LONG:
                detected_key = ENTER;
                break;
            default:
                break;
        }
    }
    return detected_key;
}

void menu_statemachine()
{
    //if(NONE != menu_curr_key) menu_show(menu_pos);
    if(menu_changed) 
    {
        menu_show(menu_pos);
        menu_changed = 0;
    }
    
    menu_curr_key = menu_check_keys();

    switch (menu_curr_key) {
        case DOWN:
            menu_pos++;
            if(NULL == menu_current[menu_pos].name) menu_pos--;
            menu_changed = 1;
            break;
        case UP:
            if(menu_pos > 0) menu_pos--;
            menu_changed = 1;
            break;
        case ENTER:
            /* Call function associated with that menu position */
            if(NULL != menu_current[menu_pos].func) {
                menu_current[menu_pos].func();                
            }
            /* Enter Submenu */
            if(NULL != menu_current[menu_pos].submenu) {
                menu_current = (menu_t*)menu_current[menu_pos].submenu;
                menu_pos = 0;
                menu_changed = 1;
            }
            break;
        case ESCAPE:
            menu_changed = 1;
            break;
        case NONE:
        default:
            break;
    }

    
    return;
}


