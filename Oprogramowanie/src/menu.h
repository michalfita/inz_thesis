#ifndef __MENU_H__
#define __MENU_H__

typedef enum {
    NONE,
    UP,
    DOWN,
    ENTER,
    ESCAPE,
    INITIAL /* Always last! */
} menu_keys_t;

typedef struct {
    char                *name;
    void                (*func)();
    struct menu_t       *submenu;
} menu_t;

void menu_statemachine();

#endif /* __MENU_H__ */
