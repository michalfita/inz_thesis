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
#include "i2cdrv.h"
#include "serial.h"
#include "rtcservice.h"
#include "isd51.h"
#include "relays.h"
#include "ups.h"
#include "beeper.h"

void resetlcd() {
	register unsigned char j, i = 0;
	P5 = 0x3F;
	RW = 1; RS = 0; EN = 1; RW = 0;
	for (j = 0; j < 250; j++) { i = i * 10; };
	EN = 0;
	for (j = 0; j < 250; j++) { i = i * 10; };
	P5 = 0x3F;
	RW = 1; RS = 0; EN = 1; RW = 0;
	i = 0;
	for (j = 0; j < 250; j++) { i = i * 10; };
	EN = 0;
	for (j = 0; j < 250; j++) { i = i * 10; };
	P5 = 0x3F;
	RW = 1; RS = 0; EN = 1; RW = 0;
	i = 0;
	for (j = 0; j < 250; j++) { i = i * 10; };
	EN = 0;
	for (j = 0; j < 250; j++) { i = i * 10; };
}

void writelcdcmd(unsigned char byte) {
	register unsigned char j, i = 0;
	P5 = byte;
	RS = 0; RW = 0; EN = 1;
	for (j = 0; j < 2; j++) { _nop_(); /*i = i * 10;*/ };
	EN = 0; RW = 1; RS = 0;
	EN = 1;
	while ((P5 & 0x80) != 0) { };
	EN = 0;
	P5 = 0;
}

void writelcdata(unsigned char byte) {
	P5 = byte;/*roundchar(byte);*/
	RS = 1; RW = 0; EN = 1;
	_nop_();
	_nop_();
	_nop_();
	/*_nop_();*/
	/*_nop_();*/
	EN = 0; RW = 1; RS = 0;
	EN = 1;
	while ((P5 & 0x80) != 0) { };
	EN = 0;
	P5 = 0;
}

void wait() {
    timer_snap(T_WAIT);
    while(!timer_is_timeout(T_WAIT, 17)) _nop_();
}


sbit KY1 = P5^6;
sbit TEST = P1^1;


bit key_state = 0;
bit last_key_state = 0;

app_current_t app_current = A_NOTHING;

extern lcd_state_t next_state;

// DEBUG
extern bit serial_rx_q_empty();
extern char serial_rx_q_pop();

int main() {
    relays_off();	
    serial_initialize();

//	TMOD |= 0x20;
//	TH1 = 0xFD;				/* 19200 */
//	TR1 = 1;				/* start Timer 1 */
//	TI  = 1;
	EAL = 1;				/* enable interrupts */
	EX2 = 1;				/* enable interrupt INT2 (9) */
    EX6 = 0;                /* disable interrupt INT6 (P1.3) */
    EX5 = 0;                /* disable interrupt INT5 (P1.2) */
    EX4 = 0;                /* disable interrupt INT4 (P1.1) */
    EX3 = 0;                /* disable interrupt INT3 (P1.0) */

	//P4 &= ~0x01;			/* light green led */
	//P4 &= ~0x02;			/* light red led */
    
	timer1_initialize();

	resetlcd();
	writelcdcmd(0x38);		/* function set 2 lines, 5x8 font */
	writelcdcmd(0x0C);		/* display on, cursor off, blink off */
	writelcdcmd(0x06);		/* position increment */
	writelcdcmd(0x01);		/* clears display */

	writelcdcmd(0x02);	/* cursor return home */
	wait();

	lcd_init_buffer();

	while (1) {
        if(!display_clock) app_scroll();
        app_clock();
		//if(czy_przerwanie == 1)
        if(timer_is_timeout_snap(T_MENU , 1))
		{
            switch(app_current)
            {
                case A_NOTHING:
                    app_nothing();
                    break;
			    case A_CHARHELP:
                	app_charhelp();
                    break;
    		//czy_przerwanie = 0;
                case A_SHOWCONF:
                    app_showconf();
                    break;
                case A_DATETIMESET:
                    app_setclock();
                    break;
                case A_MENU:
                    menu_statemachine();
                    break;
            }
		}
		
        relays_statemachine();
		kbd_statemachine();
		lcd_statemachine();
        //process_serial_tx();
        //process_serial_rx();
        beeper_process();

        if(timer_is_timeout(T_LED, 200)) {
            UPS_FAIL = 1;
            if(UPS_FAIL) puts("- UPS FAIL REPORT");
            else puts("- UPS OK REPORT");

            if(CHECK_D1_FAIL) lcd_putstring(0, 2, "# D1 F");
            else lcd_putstring(0, 2, "# D1 T");
            if(CHECK_D0_FAIL) lcd_putstring(9, 2, "# D0 F");
            else lcd_putstring(9, 2, "# D0 T");

            timer_snap(T_LED);
            //if(I2C_SDA) I2C_SDA = 0;
            //else I2C_SDA = 1;

            if(!serial_rx_q_empty())
            {
                char c;
                c = serial_rx_q_pop();
                putchar(c);
            }
        }

	}

//	writelcdata('H');		/* letter H */
//	writelcdata('i');		/* letter I */
//	writelcdata('t');
//	writelcdata('a');
//	writelcdata('c');
//	writelcdata('h');
//	writelcdata('i');
//	writelcdcmd(0x0F);		/* display on, cursor on, blink on */
//	writelcdcmd(0x02);		

	for (;;);
}
