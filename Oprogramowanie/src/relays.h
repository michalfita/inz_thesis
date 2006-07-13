/* Relays header */
/****h* System/Relays
 * NAME
 *   Relays
 * FUNCTION
 *   This module contains functions which implements controlling of relays in device.
 * SYNOPSIS
 *   As described per function.
 * CREATION DATE
 *   10 May 2006
 ***/

#ifndef __RELAYS_H__
#define __RELAYS_H__

#define RELAY_DATA *(unsigned char xdata *)(0xFFFF)

typedef enum {
    POWER_NORMAL,   /* powered from power line */
    POWER_UPS,      /* powered from ups */
    ENGINE_START,   /* as above, but engine is starting */
    ENGINE_WORKING, /* engine is working */
    ENGINE_WAITING, /* waiting for power from engine */
    ENGINE_CHECK,   /* check whether we are powered */
    POWER_ENGINE,   /* powered from engine */
    POWER_RETURNED, /* power line returned, still on engine */
    POWER_SWITCHED, /* switched back to power from power line */
    ENGINE_STOP     /* engine is stopped */
} relays_state_t;

void relay1_on();
void relay1_off();

void relay2_on();
void relay2_off();

void relay3_on();
void relay3_off();

void relay4_on();
void relay4_off();

void relay5_on();
void relay5_off();

void relays_off();

void relays_statemachine();

#endif /*__RELAYS_H__*/
