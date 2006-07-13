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

#define QUEUE_TX_LEN 200
#define QUEUE_RX_LEN 250

/* Queue for serial transmissions */
unsigned char serial_tx_queue[QUEUE_TX_LEN];
unsigned char serial_tx_q_pos_in;
unsigned char serial_tx_q_pos_out;

/* Queue for serial recevings */
unsigned char serial_rx_queue[QUEUE_RX_LEN];
unsigned char serial_rx_q_pos_in;
unsigned char serial_rx_q_pos_out;
unsigned char serial_rx_q_cr_marker;

void serial_initialize()
{
    unsigned char i;

    //SCON = 0x72; // 0111 0010
    SCON = 0x5A; // 01011010
    PCON |= 0x80; // SMOD = 1;
    BD = 1;
    TI = 1;
    //ES = 0; // disable serial interrupt

    for(i = 0; i < QUEUE_TX_LEN; i++) serial_tx_queue[i] = '\0';
    serial_tx_q_pos_in = 0;
    serial_tx_q_pos_out = 0;
    for(i = 0; i < QUEUE_RX_LEN; i++) serial_rx_queue[i] = '\0';
    serial_rx_q_pos_in = 0;
    serial_rx_q_pos_out = 0;
    serial_rx_q_cr_marker = 0;
}

bit serial_tx_q_push(char *c)
{
    if((serial_tx_q_pos_in + 1) % QUEUE_TX_LEN != serial_tx_q_pos_out)
    {
        serial_tx_queue[serial_tx_q_pos_in] = *c;
        serial_tx_q_pos_in++;
        serial_tx_q_pos_in %= QUEUE_TX_LEN;
        return 0;
    } else return 1;
}

bit serial_rx_q_push(char *c)
{
    if('\n' == *c) // check whether line is finished
    {
        serial_rx_q_cr_marker = serial_rx_q_pos_in;
    }
    if((serial_rx_q_pos_in + 1) % QUEUE_RX_LEN == serial_rx_q_pos_out)
    {
        /* In case of full queue */
        if(( /* - when cr marker is between out and in marker - */
            (serial_rx_q_pos_out < serial_rx_q_pos_in)
            && (serial_rx_q_cr_marker > serial_rx_q_pos_out)
            && (serial_rx_q_cr_marker < serial_rx_q_pos_in)
           ) || !(
            (serial_rx_q_pos_out > serial_rx_q_pos_in)
            && (serial_rx_q_cr_marker < serial_rx_q_pos_out)
            && (serial_rx_q_cr_marker > serial_rx_q_pos_in)
           ))
        {
            /* when marker is before end and after begining of data 
             * discard till last cr received and free space */
            serial_rx_q_pos_out = serial_rx_q_cr_marker;
        }
    }
    if((serial_rx_q_pos_in + 1) % QUEUE_RX_LEN != serial_rx_q_pos_out)
    {
        serial_rx_queue[serial_rx_q_pos_in] = *c;
        serial_rx_q_pos_in++;
        serial_rx_q_pos_in %= QUEUE_RX_LEN;
        return 0;
    }
    else return 1;
}


char serial_tx_q_pop()
{
    unsigned char c;
    if(serial_tx_q_pos_in != serial_tx_q_pos_out)
    {
        c = serial_tx_queue[serial_tx_q_pos_out];
        serial_tx_q_pos_out++;
        serial_tx_q_pos_out %= QUEUE_TX_LEN;
       
    } else c = '\0';
    return c;
}

char serial_rx_q_pop()
{
    unsigned char c;
    if(serial_rx_q_pos_in != serial_rx_q_pos_out)
    {
        c = serial_rx_queue[serial_rx_q_pos_out];
        serial_rx_q_pos_out++;
        serial_rx_q_pos_out %= QUEUE_RX_LEN;
       
    } else c = '\0';
    return c;
}

bit serial_tx_q_empty()
{
    return (serial_tx_q_pos_in == serial_tx_q_pos_out);
}

bit serial_rx_q_empty()
{
    return (serial_rx_q_pos_in == serial_rx_q_pos_out);
}

char putchar (char c)
{
    if(serial_tx_q_push(&c)) return c;
    else return '\0';
}

void process_serial_tx()
{
    unsigned char c;
    if(TI == 1)
    {
        if(!serial_tx_q_empty())
        {
            c = serial_tx_q_pop();
            TI = 0; // clear Transmit Indicatior
            SBUF = c; // write data into TX buffer
        }
    }
}

void process_serial_rx()
{
    unsigned char c;
    if (RI == 1)
    {        
        c = SBUF; // read data from RX serial buffer
        RI = 0; // clear Receive Indicatior
        serial_rx_q_push(&c);
    }
}
