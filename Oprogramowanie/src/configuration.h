/* Configuration header */
/****h* System/Configuration
 * NAME
 *   Configuration
 * FUNCTION
 *   This module contains types, variables and functions responsible for internal
 *   configuration of the device.
 * SYNOPSIS
 *   As described per function.
 * CREATION DATE
 *   10 May 2006
 ***/

#ifndef __CONFIGURATION_H__
#define __CONFIGURATION_H__

/****t* Configuration/configuration_t
 * NAME
 *   configuration_t - configuration structure
 * FUNCTION
 *   This structure is used to store important configurable values needed by device.
 * CREATION DATE
 *   10 May 2006
 ***/
typedef struct {
	unsigned char engine_delay; /* how long wait for startup of the engine */
    unsigned char start_time;   /* how long hold start signal to the engine */
    unsigned char start_delay;  /* how long wait before switch from ups to engine */
    unsigned char restart_delay;/* how long wait before retry to start engine */
    unsigned char return_delay; /* how long wait before switch back to line */
} configuration_t;

extern configuration_t current_config;

#endif /*__CONFIGURATION_H__*/
