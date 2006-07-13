/* Text Scroll Application */
#include <reg515.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <intrins.h>
#include "timer.h"
#include "lcddrv.h"
#include "kbddrv.h"
#include "applications.h"

const char text[] = "-- [ Praca dyplomowa Michal Fita, WSZiB 2005/2006 ] --";

void app_scroll()
{
	static int len = 0;
	static int i, j, k;
	static char xdata tmp_buf[20];

	/* First time initialization */
	if (0 == len) {
		len = strlen(text);
		i = -20;
		j = 0;
	}

	/* Do this every 12 ms cycle */
    if(timer_is_timeout(T_DISPLAY, 12))
	{
		if (i < len) i++; else i = -20;
		for (k = 0; k < 20; k++) {
			tmp_buf[k] = (i+k < 0) ? ' ' : ((i+k > len - 1) ? ' ' : text[i+k]);
		}
		lcd_putline(0, tmp_buf);
		j = 0;
        timer_snap(T_DISPLAY);
    }
}
