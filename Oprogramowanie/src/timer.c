#include <reg515.h>
#include <intrins.h>
#include "timer.h"

#define TIMER0_COUNT 0xDC11 /* 10000h - ((11,059,200 Hz / (12 * FREQ)) - 17) */
#define XTIMER1_COUNT 0xD901 /* 10000h - ((12,000,000 Hz / (12 * FREQ)) - 17) */
#define TIMER1_COUNT 0xD8FE

bit 				czy_przerwanie 	= 0;
volatile unsigned 	timer1_tick 	= 0;

static unsigned     timers_store[NO_OF_TIMERS];

void t1_intr(void) interrupt 3 {
	unsigned i;
	/*------------------------------------------------
	Stop Timer 1, adjust the timer 1 counter so that
	we get another interrupt in 10ms, and restart the
	timer.
	------------------------------------------------*/
	TR1 = 0; /* stop timer 1 */
	i = TIMER1_COUNT + TL1 + (TH1 << 8);
	TL1 = i;
	TH1 = i >> 8;
	TR1 = 1; /* start timer 1 */
	/*------------------------------------------------
	Increment the timer tick. This interrupt should
	occur approximately every 10ms. So, the resolution
	of the timer will be 100Hz not including interrupt
	latency.
	------------------------------------------------*/
	timer1_tick++;
	czy_przerwanie = 1;	
}

void timer1_initialize (void)
{
	EAL = 0; /* disable interrupts */
	timer1_tick = 0;
	TR1 = 0; /* stop timer 1 */
	TMOD &= ~0xF0; /* clear timer 1 mode bits */
	TMOD |= 0x10; /* put timer 1 into 16-bit no prescale */
	TL1 = (TIMER1_COUNT & 0x00FF);
	TH1 = (TIMER1_COUNT >> 8);
	//PT1 = 0; /* set low priority for timer 1 */
	ET1 = 1; /* enable timer 1 interrupt */
	TR1 = 1; /* start timer 1 */
	EAL = 1;
}

void timer_snap(timer_id_t tid)
{
    if(tid < NO_OF_TIMERS) {
        timers_store[tid] = timer1_tick;
    }
}

bit timer_is_timeout(timer_id_t tid, unsigned interval)
{
    register unsigned curr_timer = timer1_tick; // hold current timer

    if(tid < NO_OF_TIMERS) {
        return ((timers_store[tid] + interval) <= curr_timer);
    }
    return 0;
}

bit timer_is_timeout_snap(timer_id_t tid, unsigned interval)
{
    register unsigned curr_timer = timer1_tick; // hold current timer
    register bit result;
    
    if(tid < NO_OF_TIMERS) {
        // Check timer
        result = ((timers_store[tid] + interval) <= curr_timer);
        // ...and store it!
        if(result) timers_store[tid] = curr_timer;
        return result;
    }
    return 0;
}


unsigned timer_get()
{
    return timer1_tick;
}
