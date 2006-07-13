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
#include "relays.h"
#include "ups.h"
#include "beeper.h"

static unsigned char relay_state = 0;
static relays_state_t curr_state = POWER_NORMAL;
static relays_state_t next_state = POWER_NORMAL;

void relay1_on()
{
    relay_state |= 0x01;
    RELAY_DATA = relay_state;
    RELAY_DATA = relay_state;
    _nop_();
}
void relay1_off()
{
    relay_state &= ~0x01;
    RELAY_DATA = relay_state;
    RELAY_DATA = relay_state;
    _nop_();
}
void relay2_on()
{
    relay_state |= 0x02;
    RELAY_DATA = relay_state;
    RELAY_DATA = relay_state;
    _nop_();
}
void relay2_off()
{
    relay_state &= ~0x02;
    RELAY_DATA = relay_state;
    RELAY_DATA = relay_state;
    _nop_();
}
void relay3_on()
{
    relay_state |= 0x04;
    RELAY_DATA = relay_state;
    RELAY_DATA = relay_state;
    _nop_();
}
void relay3_off()
{
    relay_state &= ~0x04;
    RELAY_DATA = relay_state;
    RELAY_DATA = relay_state;
    _nop_();
}
void relay4_on()
{
    relay_state |= 0x08;
    RELAY_DATA = relay_state;
    RELAY_DATA = relay_state;
    _nop_();
}
void relay4_off()
{
    relay_state &= ~0x08;
    RELAY_DATA = relay_state;
    RELAY_DATA = relay_state;
    _nop_();
}
void relay5_on()
{
    relay_state |= 0x10;
    RELAY_DATA = relay_state;
    RELAY_DATA = relay_state;
    _nop_();
}
void relay5_off()
{        
    relay_state &= ~0x10;
    RELAY_DATA = relay_state;
    RELAY_DATA = relay_state;
    _nop_();
}


void relays_off()
{
    relay_state = 0x00;
    RELAY_DATA = 0x00;
    RELAY_DATA = 0x00;
    _nop_();
}

void relays_statemachine()
{
    switch(curr_state)
    {
        case POWER_NORMAL:
            if(CHECK_UPS_FAIL)
            {
                lcd_putstring(1, 1, "POWER from UPS!");
                lcd_putstring(1, 3, "Awaiting startup...");
                puts("- POWER FROM UPS");
                beep(7);
                timer_snap(T_RELAYS); /* start first measure time to engine start */
                next_state = POWER_UPS;
                lcd_putstring(0, 2, "* POWER_UPS");
            }
            relay4_off();
            break;
        case POWER_UPS:
            if(!CHECK_UPS_FAIL)
            {
                lcd_putstring(1, 1, "POWER from Line");
                lcd_putstring(1, 3, "                   ");
                puts("- POWER FROM LINE");
                beep(1);
                next_state = POWER_NORMAL;
                lcd_putstring(0, 2, "* POWER_NORMAL");
            }
            else
            {
                if(timer_is_timeout(T_RELAYS, current_config.engine_delay * 100))
                {
                    lcd_putstring(1, 3, "Starting engine...");
                    beep(7);
                    next_state = ENGINE_START;
                    lcd_putstring(0, 2, "* ENGINE_START");
                    timer_snap(T_RELAYS);
                }
            }
            break;
        case ENGINE_START:
            if(!CHECK_UPS_FAIL)
            {
                lcd_putstring(1, 1, "POWER from Line    ");
                lcd_putstring(1, 3, "                   ");
                puts("- POWER FROM LINE");
                beep(1);
                next_state = POWER_NORMAL;
                lcd_putstring(0, 2, "* POWER_NORMAL");
            }
            else
            {
                // give signal to startup engine
                relay1_on(); // turn on ignition
                relay2_on(); // start engine

                if(timer_is_timeout(T_RELAYS, current_config.start_time * 100))
                {
                    lcd_putstring(1, 3, "Engine started...  ");
                    next_state = ENGINE_WAITING;
                    lcd_putstring(0, 2, "* ENGINE_WAITING");
                    timer_snap(T_RELAYS);    
                }
            }
            break;
        case ENGINE_WAITING:
            if(!CHECK_UPS_FAIL)
            {
                lcd_putstring(1, 1, "Power back!  ");
                lcd_putstring(1, 3, "                   ");
                beep(1);
                timer_snap(T_RELAYS); /* start measure time  */
                next_state = ENGINE_STOP;
                lcd_putstring(0, 2, "* ENGINE_STOP");
            }
            if(timer_is_timeout(T_RELAYS, current_config.start_delay * 100))
            {
                lcd_putstring(1, 1, "Engine Power Check!");
                lcd_putstring(1, 3, "                  ");
                beep(1);
                next_state = ENGINE_CHECK;
                lcd_putstring(0, 2, "* ENGINE_CHECK");
                timer_snap(T_RELAYS);    
            }
            relay2_off();
            break;
        case ENGINE_CHECK:
            if(!CHECK_UPS_FAIL)
            {
                lcd_putstring(1, 1, "Power back!  ");
                lcd_putstring(1, 3, "                   ");
                beep(1);
                timer_snap(T_RELAYS); /* start measure time  */
                next_state = ENGINE_STOP;
                lcd_putstring(0, 2, "* ENGINE_STOP");
            }
            if(CHECK_D1_FAIL)
            {
                if(timer_is_timeout(T_RELAYS, current_config.restart_delay * 100))
                {
                    lcd_putstring(1, 3, "Restarting engine...");
                    puts("- ENGINE PROBLEM");
                    beep(7);
                    next_state = ENGINE_START;
                    lcd_putstring(0, 2, "* ENGINE_START");
                    timer_snap(T_RELAYS);
                }
            }
            else
            {
                lcd_putstring(1, 1, "Power from engine");
                beep(7);
                puts("- ENGINE POWERED");
                next_state = POWER_ENGINE;
                lcd_putstring(0, 2, "* POWER_ENGINE");
            }
            break;
        case POWER_ENGINE:
            if(!CHECK_UPS_FAIL)
            {
                lcd_putstring(1, 1, "Power back on line ");
                lcd_putstring(1, 3, "                   ");
                beep(1);
                next_state = POWER_RETURNED;
                lcd_putstring(0, 2, "* POWER_RETURNED");
                timer_snap(T_RELAYS); /* start measure time of how long power is back */
            }
            // switch to power from engine
            relay4_on();
            break;
        case POWER_RETURNED:
            if(CHECK_UPS_FAIL)
            {
                lcd_putstring(1, 1, "Power down again!  ");
                lcd_putstring(1, 3, "                   ");
                beep(7);
                timer_snap(T_RELAYS); /* start measure time  */
                next_state = POWER_ENGINE;
                lcd_putstring(0, 2, "* POWER_ENGINE");
            }
            if(timer_is_timeout(T_RELAYS, current_config.return_delay * 100))
            {
                lcd_putstring(1, 1, "Line power returned");
                lcd_putstring(1, 3, "                   ");
                beep(1);
                next_state = POWER_SWITCHED;
                lcd_putstring(0, 2, "* POWER_SWITCHED");
                timer_snap(T_RELAYS);    
            }
            break;
        case POWER_SWITCHED:
            if(CHECK_UPS_FAIL)
            {
                lcd_putstring(1, 1, "Power down again!  ");
                lcd_putstring(1, 3, "                   ");
                beep(7);
                timer_snap(T_RELAYS); /* start measure time  */
                next_state = POWER_ENGINE;
                lcd_putstring(0, 2, "* POWER_ENGINE");
            }
            else
            {
                // switch power back from power line
                relay4_off();
                lcd_putstring(1, 1, "POWER from Line    ");
                lcd_putstring(1, 3, "Awaiting stop eng. ");
                beep(1);
                puts("- POWER FROM LINE");
                timer_snap(T_RELAYS);
                next_state = ENGINE_STOP;
                lcd_putstring(0, 2, "* ENGINE_STOP");
            }
            break;
        case ENGINE_STOP:
            // cut off ingintion powering in engine
            if(timer_is_timeout(T_RELAYS, 300))
            {
                lcd_putstring(1, 3, "Engine stopped     ");
                beep(1);
                next_state = POWER_NORMAL;
                lcd_putstring(0, 2, "* POWER_NORMAL");
                relay1_off();
                relay2_off();
            }
            break;
    }
    curr_state = next_state;
}
