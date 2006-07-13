#ifndef __LCDDRV_H__
#define __LCDDRV_H__

#define LCD_OUTPUT_ADDR_CMDS 0xFE00
#define LCD_OUTPUT_ADDR_DATA 0xFE01
#define LCD_CMDS *(unsigned char xdata *)(LCD_OUTPUT_ADDR_CMDS)
#define LCD_DATA *(unsigned char xdata *)(LCD_OUTPUT_ADDR_DATA)

sbit RS = P4^4;
sbit RW = P4^3;
sbit EN = P4^2;

typedef enum {
    IDLE,
    PUTCHAR,
    RETURN,
    NEXTLINE,
    WAIT
} lcd_state_t;

void lcd_statemachine();

void lcd_putline(unsigned char line, const char *str);
void lcd_putstring(unsigned char col, unsigned char line, const char *str);

void lcd_clear();
void lcd_init_buffer();

#endif /*__LCDDRV_H__*/

