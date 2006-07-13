#include <windows.h>
#include <stdio.h>
#include <conio.h>
#include <stdlib.h>

typedef enum {
    NONE,
    UP,
    DOWN,
    ENTER,
    ESCAPE,
    INITIAL /* Always last! */
} menu_keys_t;

typedef struct {
    char        *name;
    void        (*func)();
    struct menu_t      *submenu;
} menu_t;

const menu_t main_menu[];

const menu_t sub_menu[] = {
    {"Engine time",     NULL,   NULL},
    {"Return time",     NULL,   NULL},
    {"Date/Time",       NULL,   NULL},
    {"Show current",    NULL,   NULL},
    {"Factory Reset",   NULL,   NULL},
    {"Exit",            NULL,   main_menu},
    {NULL,              NULL,   NULL},
};


const menu_t main_menu[] = {
    {"Status",          NULL,   NULL},
    {"Applications",    NULL,   NULL},
    {"Service/Tests",   NULL,   NULL},
    {"Configure",       NULL,   sub_menu},
    {"Exit",            NULL,   NULL},
    {NULL,              NULL,   NULL},
};

/*static*/ menu_keys_t menu_curr_key = INITIAL;
static char menu_pos = 0;
static menu_t *menu_current = main_menu;

void menu_show(unsigned char pos)
{
    if(pos > 0) lcd_putstring(1, menu_current[pos-1].name);
    else lcd_putstring(1, "                ");
    
    lcd_putstring(2, menu_current[pos].name);
    
    if(menu_current[pos+1].name) lcd_putstring(3, menu_current[pos+1].name);
    else lcd_putstring(3, "                ");
    
    return;
}

void menu_statemachine()
{
    switch (menu_curr_key) {
        case DOWN:
            menu_pos++;
            if(NULL == menu_current[menu_pos].name) menu_pos--;
            break;
        case UP:
            if(menu_pos > 0) menu_pos--;
            break;
        case ENTER:
            if(NULL != menu_current[menu_pos].submenu) {
                menu_current = menu_current[menu_pos].submenu;
                menu_pos = 0;
            }

            break;
        case ESCAPE:

            break;
        case NONE:
        default:
            break;
    }

    if(NONE != menu_curr_key) menu_show(menu_pos);
    
    menu_curr_key = NONE;
    return;
}
