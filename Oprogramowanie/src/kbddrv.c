#include <reg515.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "i2cdrv.h"
#include "kbddrv.h"
#include "timer.h"
#include "beeper.h"

#define KBD_KEYS_NUM    5

#define KBD_RELEASED_CNT    10
#define KBD_PRESSED_CNT     6
#define KBD_PRESSED_TIMEOUT 90

typedef enum {
    RELEASED,
    PRESSED,
    PRESSED_LONG,
    COUNT_RELEASED,
    COUNT_PRESSED,
    TRIGGER_RELEASED,
    TRIGGER_PRESSED
} kbd_state_t;

/* DEBUG */
extern unsigned int keypressed;

/* This stores current states of state machine for every key */
static kbd_state_t kbd_curr_state[KBD_KEYS_NUM] = {RELEASED};
static kbd_state_t kbd_prev_state[KBD_KEYS_NUM] = {RELEASED};

/* Only one key is processed at one time, which is stored below */
static unsigned char kbd_curr_key = 0;

/* Counters to measure how long key physically pressed or released */
static unsigned char kbd_pressed_counter[KBD_KEYS_NUM] = {0};
static unsigned char kbd_released_counter[KBD_KEYS_NUM] = {0};
static unsigned int  kbd_pressed_timer[KBD_KEYS_NUM] = {0};

/* Holds current state of keys, triggered by state machine */
/* This is bitmap of key state */
unsigned char kbd_keys_state = 0;

/* Store last pressed key */
static kbd_key_code_t kbd_last_key_code = K_NONE;

/* Whether any key was pressed */
static bit kbd_key_pressed = 0;

/*****************************************************************************/

/* Checks current physical state of a key on board */
bit kbd_test_key(unsigned char key)
{
	bit status = 0;
	KB = 0; P5 = 0xFF;
	status = ((P5 & (1 << (key + 3))) == 0);
	KB = 1;
	return status;
}

/* Checks whether time from begining of press passed */
kbd_state_t kbd_test_time(unsigned char key)
{
    if(kbd_pressed_timer[key] == 0)
    {
        kbd_pressed_timer[key] = timer_get();
        return PRESSED;
    }
    else
    {
        if((kbd_pressed_timer[key] + KBD_PRESSED_TIMEOUT) <= timer_get())
            return PRESSED_LONG;
        else
            return PRESSED;
    }
}

/* Implements main state machine for keyboard */
void kbd_statemachine()
{
    switch(kbd_curr_state[kbd_curr_key])
    {
        case RELEASED:
            if (kbd_test_key(kbd_curr_key))
                kbd_curr_state[kbd_curr_key] = COUNT_PRESSED;
            //if (PRESSED == kbd_prev_state[kbd_curr_key])
                kbd_prev_state[kbd_curr_key] = RELEASED;
            break;
        case PRESSED:
            if (!kbd_test_key(kbd_curr_key))
                kbd_curr_state[kbd_curr_key] = COUNT_RELEASED;
            else
                kbd_curr_state[kbd_curr_key] = kbd_test_time(kbd_curr_key);
            if (RELEASED == kbd_prev_state[kbd_curr_key])
            {
                kbd_key_pressed = 1;
                kbd_last_key_code = kbd_curr_key;
                kbd_prev_state[kbd_curr_key] = PRESSED;
            }
            break;
        case PRESSED_LONG:
            if (!kbd_test_key(kbd_curr_key))
                kbd_curr_state[kbd_curr_key] = COUNT_RELEASED;
            if (( PRESSED == kbd_prev_state[kbd_curr_key])
               || RELEASED == kbd_prev_state[kbd_curr_key])
            {
                kbd_key_pressed = 1;
                kbd_last_key_code = kbd_curr_key | 0x80;
                kbd_prev_state[kbd_curr_key] = PRESSED_LONG;
            }
            break;
        case COUNT_RELEASED:
            if (!kbd_test_key(kbd_curr_key))
            {
                if (KBD_RELEASED_CNT > kbd_released_counter[kbd_curr_key])
                {
                    kbd_released_counter[kbd_curr_key]++;
                    kbd_curr_state[kbd_curr_key] = COUNT_RELEASED;
                }
                else kbd_curr_state[kbd_curr_key] = TRIGGER_RELEASED;
            }
            else kbd_curr_state[kbd_curr_key] = COUNT_PRESSED;
            break;
        case COUNT_PRESSED:
            if (kbd_test_key(kbd_curr_key))
            {
                if (KBD_PRESSED_CNT > kbd_pressed_counter[kbd_curr_key])
                {
                    kbd_pressed_counter[kbd_curr_key]++;
                    kbd_curr_state[kbd_curr_key] = COUNT_PRESSED;
                }
                else kbd_curr_state[kbd_curr_key] = TRIGGER_PRESSED;
            }
            else kbd_curr_state[kbd_curr_key] = COUNT_RELEASED;
            break;
        case TRIGGER_RELEASED:
            kbd_released_counter[kbd_curr_key] = 0;
            kbd_pressed_timer[kbd_curr_key] = 0;
            //kbd_keys_state[kbd_curr_key] = 0;
			kbd_keys_state = kbd_keys_state & ~(1 << kbd_curr_key);
            kbd_curr_state[kbd_curr_key] = RELEASED;
            break;
        case TRIGGER_PRESSED:
            kbd_pressed_counter[kbd_curr_key] = 0;
            //kbd_keys_state[kbd_curr_key] = 1;
			kbd_keys_state = kbd_keys_state | (1 << kbd_curr_key);
            //kbd_curr_state[kbd_curr_key] = PRESSED;
            kbd_curr_state[kbd_curr_key] = kbd_test_time(kbd_curr_key);
            beep(3);
            break;
    }

    /* Iterate through all keys, one per one cycle */
    kbd_curr_key = (kbd_curr_key + 1) % KBD_KEYS_NUM;

    return;
}

/***********************************/
/* Key intrface API implementation */
/***********************************/

/* Checks whether any key was pressed from time of previous check */
bit kbd_hit()
{
    if(kbd_key_pressed) {
        kbd_key_pressed = 0;
        return 1;
    }
    else
        return 0;
}

/* Returns code of most recent pressed key */
kbd_key_code_t kbd_get_key()
{
    return kbd_last_key_code;
}
