/* Applications header */
/****h* System/Applications
 * NAME
 *   Applications
 * FUNCTION
 *   This module contains functions which implements user applications functionality
 *   in system. There are set of infinite state machines which they do some work.
 * SYNOPSIS
 *   As described per function.
 * CREATION DATE
 *   20 Mar 2006
 ***/

#ifndef __APPLICATIONS_H__
#define __APPLICATIONS_H__

/****t* Applications/app_current_t
 * NAME
 *   timer_id_t - timer enumerator
 * FUNCTION
 *   This enumeration types is used to select in which timer we want to hold time
 *   got by timer_snap() and to check by timer_is_timeout().
 * CREATION DATE
 *   03 Mar 2006
 ***/
typedef enum {
    A_NOTHING,
    A_MENU,
    A_CHARHELP,
    A_DATETIMESET,
    A_SHOWCONF,
    NO_OF_APPS /* Always last */
} app_current_t;

extern app_current_t app_current;

/****f* Applications/app_nothing
 * NAME
 *   void app_nothing()
 * FUNCTION
 *   This function implements doing nothing during idle time.
 * SYNOPSIS
 *   Call this function from main loop.
 * PARAMETERS
 *   None.
 * OUTPUT
 *   None.
 * CREATION DATE
 *   28 Mar 2006
 ***/
void app_nothing();

/****f* Applications/app_scroll
 * NAME
 *   void app_scroll()
 * FUNCTION
 *   This function implements scrolled text on first row of LCD screen.
 * SYNOPSIS
 *   Call this function from main loop.
 * PARAMETERS
 *   None.
 * OUTPUT
 *   None.
 * CREATION DATE
 *   09 Jan 2006
 ***/
void app_scroll();

/****f* Applications/app_clock
 * NAME
 *   void app_clock()
 * FUNCTION
 *   This function implements displaying clock on first line of LCD display.
 * SYNOPSIS
 *   Call this function from main loop.
 * PARAMETERS
 *   None.
 * OUTPUT
 *   None.
 * CREATION DATE
 *   25 Mar 2006
 ***/
void app_clock();

extern bit display_clock;

/****f* Applications/app_charhelp
 * NAME
 *   void app_charhelp()
 * FUNCTION
 *   This function implements simple application which allows to select character
 *   displayed on LCD which ASCII code is displayed alongside it.
 * SYNOPSIS
 *   Call this function from main loop.
 * PARAMETERS
 *   None.
 * OUTPUT
 *   None.
 * CREATION DATE
 *   09 Jan 2006
 ***/
void app_charhelp();

/****f* Applications/app_showconf
 * NAME
 *   void app_showconf()
 * FUNCTION
 *   This function implements simple application which displays current
 *   configuration.
 * SYNOPSIS
 *   Call this function from main loop.
 * PARAMETERS
 *   None.
 * OUTPUT
 *   None.
 * CREATION DATE
 *   10 May 2006
 ***/
void app_showconf();

/****f* Applications/app_setclock
 * NAME
 *   void app_setclock()
 * FUNCTION
 *   This function implements application which allows to set
 *   date and time of the device.
 * SYNOPSIS
 *   Call this function from main loop.
 * PARAMETERS
 *   None.
 * OUTPUT
 *   None.
 * CREATION DATE
 *   22 Jun 2006
 ***/
void app_setclock();

#endif /*__APPLICATIONS_H__*/

