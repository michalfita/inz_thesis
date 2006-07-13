
#ifndef __BEEPER_C__
#define __BEEPER_C__

sbit BEEPER = P4^6;
sbit LIGHT = P4^7;

void beep(unsigned int interval);
void beeper_process();

#endif /* __BEEPER_C__ */
