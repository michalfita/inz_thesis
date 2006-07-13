#include <reg515.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <intrins.h>
#include "lcddrv.h"

#define LCD_ROWS 4
#define LCD_COLS 20

#define LCD_HOME_CMD 0x02



static unsigned char lcd_row = 0;
static unsigned char lcd_col = 0;
static lcd_state_t curr_state = IDLE;
static lcd_state_t next_state = IDLE;

unsigned char lcd_buffer[LCD_ROWS * LCD_COLS];
static unsigned char lcd_buffer_occupancy = 0;

#ifdef DEBUG_PC
char* dbg_statename(lcd_state_t state) {
    static unsigned char name[20];
    switch (state) {
        case IDLE:
            strcpy(name, "IDLE    ");
            break;
        case PUTCHAR:
            strcpy(name, "PUTCHAR ");
            break;
        case RETURN:
            strcpy(name, "RETURN  ");
            break;
        case NEXTLINE:
            strcpy(name, "NEXTLINE");
            break;
        case WAIT:
            strcpy(name, "WAIT    ");
            break;
        default:
            strcpy(name, "!       ");
            break;
    }
    return name;
}

void dbg_showbuffer() {
    int x,y;
    for (y = 0; y < 4; y++) {
        for (x = 0; x < 20; x++) {
            if((x != lcd_col) || (y != lcd_row)) putchar(lcd_buffer[(y * LCD_COLS) + x]);
            else putchar('_');
        }
        putchar('|');
        putchar('\n');
    }
    printf("X = %02d    Y = %02d\n", lcd_col, lcd_row);
    printf("Buffer occupancy = %d\n", lcd_buffer_occupancy);
    printf("Current state    = %s\n", dbg_statename(curr_state));
    printf("   Next state    = %s\n", dbg_statename(next_state));
}
#endif DEBUG_PC

void lcd_putchar() /*inline*/ {
	P5 = lcd_buffer[(lcd_row * LCD_COLS) + lcd_col];
	RS = 1; RW = 0; EN = 1;
	_nop_();
	_nop_();
	_nop_();
	/*_nop_();*/
	/*_nop_();*/
	EN = 0; RW = 1; RS = 0;
	//EN = 1;
	//while ((P5 & 0x80) != 0) { };
	//EN = 0;
	//P5 = 0;
}

void lcd_putcmd(unsigned char cmd) /*inline*/ {
	P5 = cmd;
	RS = 0; RW = 0; EN = 1;
	_nop_();
	_nop_();
	_nop_();
	EN = 0; RW = 1; RS = 0;
	//EN = 1;
	//while ((P5 & 0x80) != 0) { };
	//EN = 0;
	//P5 = 0;
}

lcd_state_t lcd_check_busy_flag() /*inline*/ {
    static lcd_state_t state;
	
	EN = 1;
	if ((P5 & 0x80) != 0) {
		state = WAIT;
		EN = 0;
    } else {
		if(lcd_buffer_occupancy == 0) state = IDLE;
    	else state = PUTCHAR;
		EN = 0;	
		P5 = 0;
	}
    return state;
}

void lcd_clear()
{
    unsigned char i;
    for (i = 0; i < (LCD_ROWS * LCD_COLS); i++) {
        lcd_buffer[i] = 0x20; /* Fill buffer by spaces */
    }

    if(curr_state == IDLE) lcd_buffer_occupancy = 1;
    else lcd_buffer_occupancy = 2;
}

void lcd_init_buffer()
{
    lcd_clear();

    lcd_buffer_occupancy = 0;
    lcd_row = 0;
    lcd_col = 0;
}

void lcd_putline(unsigned char line, const char *str)
{
    if(line < 4) {
        strncpy(lcd_buffer + (line * LCD_COLS), str, LCD_COLS);
	
        if(curr_state == IDLE) lcd_buffer_occupancy = 1;
        else lcd_buffer_occupancy = 2;
    }
}

void lcd_putstring(unsigned char col, unsigned char line, const char *str) {
	char i = 0;
    
    if(line < 4) {
        while(str[i] != '\0') 
	    {
	   	    *(lcd_buffer + (line * LCD_COLS) + col + i) = str[i];
		    i++;
        }

        if(curr_state == IDLE) lcd_buffer_occupancy = 1;
        else lcd_buffer_occupancy = 2;
    }
}

void lcd_statemachine() {
    curr_state = next_state;
    switch (curr_state) {
        case IDLE:
            if(lcd_buffer_occupancy == 0) next_state = IDLE;
            else next_state = PUTCHAR;
            break;
        case PUTCHAR:
            lcd_putchar();
            lcd_col++;
            if(LCD_COLS <= lcd_col) {
                lcd_col %= LCD_COLS;
                next_state = NEXTLINE;
            } else next_state = WAIT;
            break;
        case RETURN:
            lcd_putcmd(LCD_HOME_CMD);
            next_state = WAIT;
            (lcd_buffer_occupancy > 0)? lcd_buffer_occupancy-- : 0;
            break;
        case NEXTLINE:
            //lcd_putcmd(0);
            lcd_row++;
            if(LCD_ROWS <= lcd_row) {
                lcd_row %= LCD_ROWS;
                next_state = RETURN;
            } else next_state = WAIT;
            break;
        case WAIT:
            next_state = lcd_check_busy_flag();
            break;
        default:
            break;
    }
}
