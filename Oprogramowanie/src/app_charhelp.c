/* Char Helper Application */
#pragma ot(9, SIZE)

#include <reg515.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <intrins.h>
#include "timer.h"
#include "lcddrv.h"
#include "kbddrv.h"
#include "applications.h"

void app_charhelp()
{
	char testchar[20];
	static unsigned char testcounter = 0;
	static unsigned char pressed = 0;

	if (kbd_keys_state & 0x01)
	{
		lcd_putstring(1, 1, "1");
	}
	else
	{
		lcd_putstring(1, 1, " ");
	}
	if (kbd_keys_state & 0x02)
	{
		lcd_putstring(3, 1, "2");
	}
	else
	{
		lcd_putstring(3, 1, " ");
	}
	if (kbd_keys_state & 0x04)
	{
		lcd_putstring(5, 1, "3");
	}
	else
	{
		lcd_putstring(5, 1, " ");
	}
	if (kbd_keys_state & 0x08)
	{
		pressed = kbd_keys_state;
	}
	else
	{
		if(pressed & 0x08) {
			testcounter++;
			sprintf(testchar, "c = %03bu : %c  ", testcounter, testcounter);
			lcd_putstring(7, 1, testchar);
			pressed = 0;
		}
	}
	if (kbd_keys_state & 0x10)
	{
		pressed = kbd_keys_state;
	}
	else
	{
		if(pressed & 0x10) {
			testcounter--;
			sprintf(testchar, "c = %03bu : %c  ", testcounter, testcounter);
			lcd_putstring(7, 1, testchar);
			pressed = 0;
		}
	}
}
