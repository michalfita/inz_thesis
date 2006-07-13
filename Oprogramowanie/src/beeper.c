#include <reg515.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <intrins.h>
#include "timer.h"
#include "beeper.h"

static unsigned int beep_interval = 0;
static unsigned int light_interval = 6000;

void beep(unsigned int interval)
{
    beep_interval = interval;
    timer_snap(T_BEEPER);
    BEEPER = 0;
    timer_snap(T_LIGHT);
    LIGHT = 1;
}

void beeper_process()
{
	if(timer_is_timeout(T_BEEPER, beep_interval))
    {
        BEEPER = 1;
        beep_interval = 0;
    }
    if(timer_is_timeout(T_LIGHT, light_interval))
    {
        LIGHT = 0;
    }
}


