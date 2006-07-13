/* Configuration of the device */
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

configuration_t current_config = {
/* unsigned char engine_delay; */ 10,
/* unsigned char start_time;   */  3,
/* unsigned char start_delay;  */ 30,
/* unsigned char restart_delay; */ 7,
/* unsigned char return_delay; */ 60
};
