#ifndef __KBDDRV_H__
#define __KBDDRV_H__

typedef enum {
    K_EXTRA,
    K_ESCAPE,
    K_UP,
    K_DOWN,
    K_ENTER,
    K_ESCAPE_LONG = K_ESCAPE + 0x80,
    K_UP_LONG     = K_UP + 0x80,
    K_DOWN_LONG   = K_DOWN + 0x80,
    K_ENTER_LONG  = K_ENTER + 0x80,
    K_NONE        = 0xFF /* Always last! */
} kbd_key_code_t;

sbit KB = P4^5;

extern unsigned char kbd_keys_state;

void kbd_statemachine();

bit kbd_hit();
kbd_key_code_t kbd_get_key();

#endif /* __KBDDRV_H__ */
