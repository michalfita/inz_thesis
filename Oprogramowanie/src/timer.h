/* Timer header*/

/****h* System/Timer
 * NAME
 *   Timer
 * FUNCTION
 *   This module contains functions which implements timer routines which allow
 *   to wait for selected time periods by other modules in the system. Numer of
 *   internal registers holding timer values is limited by timer_id_t enumeration.
 * SYNOPSIS
 *   You have to call timer_snap() for storing current time in the selected timer.
 *   Then you should call timer_is_timeout() to check whether given period has elapsed.
 *   Routine timer_get() allows you to gather current time for some other purposes.
 * CREATION DATE
 *   03 Mar 2006
 ***/


#ifndef __TIMER_H__
#define __TIMER_H__

/****t* Timer/timer_id_t
 * NAME
 *   timer_id_t - timer enumerator
 * FUNCTION
 *   This enumaration types is used to select in which timer we want to hold time
 *   got by timer_snap() and to check by timer_is_timeout().
 * CREATION DATE
 *   03 Mar 2006
 ***/
typedef enum {
    T_WAIT,
    T_KEYBOARD,
    T_DISPLAY,
    T_CLOCK,
    T_SECOND,
    T_MENU,
    T_LED,
    T_CURSOR,
    T_RELAYS,
    T_BEEPER,
    T_LIGHT,
    NO_OF_TIMERS
} timer_id_t;

/****f* Timer/timer1_initialize()
 * NAME
 *   timer1_initialize() - init timer
 * FUNCTION
 *   This routine initializes timer functionality for whole system.
 * SYNOPSIS
 *   This routine have to be called only one before main loop.
 * PARAMETERS
 *   None.
 * OUTPUT
 *   None.
 ***/
void timer1_initialize (void);

/****f* Timer/timer_snap()
 * NAME
 *   timer_snap(timer_id_t tid) - snap timer
 * FUNCTION
 *   This routine stores current time in internal register identified by tid.
 * SYNOPSIS
 *   This routine may be called every time when there is need to start counting
 *   period of time. We then can check whether this period elapsed by calling
 *   timer_is_timeout() routine.
 * PARAMETERS
 *   timer_id_t tid - timer register identyfier.
 * OUTPUT
 *   None.
 ***/
void timer_snap(timer_id_t tid);

/****f* Timer/timer_is_timeout()
 * NAME
 *   timer_is_timeout(timer_id_t tid, unsigned interval) - check timer
 * FUNCTION
 *   This routine check current time with internal register identified by tid
 *   and returns true if timer passed value which is sum of register and
 *   interval given as second parameter.
 * SYNOPSIS
 *   This routine may be called every time when there is need to check whether
 *   interesting period of time elapsed. Precondition for this routine is call
 *   to timer_snap() which holds timer in internal register.
 * PARAMETERS
 *   timer_id_t tid - timer register identyfier.
 * OUTPUT
 *   Bit representing whether timer elapsed given interval from time moment
 *   stored by timer_snap().
 ***/
bit timer_is_timeout(timer_id_t tid, unsigned interval);

/****f* Timer/timer_is_timeout_snap()
 * NAME
 *   timer_is_timeout_snap(timer_id_t tid, unsigned interval) - check timer
 * FUNCTION
 *   This routine check current time with internal register identified by tid,
 *   stores current time in that register,
 *   and returns true if timer passed value which is sum of register and
 *   interval given as second parameter.
 * SYNOPSIS
 *   This routine may be called every time when there is need to check whether
 *   interesting period of time elapsed. Precondition for this routine is call
 *   to timer_snap() which holds timer in internal register.
 * PARAMETERS
 *   timer_id_t tid - timer register identyfier.
 * OUTPUT
 *   Bit representing whether timer elapsed given interval from time moment
 *   stored by timer_snap().
 ***/
bit timer_is_timeout_snap(timer_id_t tid, unsigned interval);

/****f* Timer/timer_get()
 * NAME
 *   timer_get() - get timer value
 * FUNCTION
 *   This routine gets current timer value from application counter.
 * SYNOPSIS
 *   This routine may be called every time when there is need get current
 *   values of application timer counter.
 * OUTPUT
 *   Unsigned integer value contains value from application timer counter.
 ***/
unsigned timer_get();

#endif /* __TIMER_H__ */
