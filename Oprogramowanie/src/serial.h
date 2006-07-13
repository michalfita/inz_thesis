/* Serial header */
/****h* System/Serial
 * NAME
 *   Serial
 * FUNCTION
 *   This module contains functions which implements handling of serial data transfers
 *   in this system, mainly used for debug and control purposes.
 * SYNOPSIS
 *   As described per function.
 * CREATION DATE
 *   23 May 2006
 ***/
#ifndef __SERIAL_H__
#define __SERIAL_H__

/****f* Serial/serial_initialize()
 * NAME
 *   void serial_initialize();
 * FUNCTION
 *   This function initializes FIFO buffer and hardware registers of serial UART.
 * SYNOPSIS
 *   Call this function before main loop.
 * PARAMETERS
 *   None.
 * OUTPUT
 *   None.
 * CREATION DATE
 *   23 May 2006
 ***/
void serial_initialize();

/****f* Serial/putchar()
 * NAME
 *   char putchar(char c);
 * FUNCTION
 *   This function implements library equivalent of putchar. It puts chars in queue
 *   instead of directly sending them into serial port. It prevents system for waiting
 *   for whole transmission to finish.
 * SYNOPSIS
 *   Call this function before main loop.
 * PARAMETERS
 *   One character to transmit (buffered).
 * OUTPUT
 *   Character put in FIFO, '\0' in case of full buffer.
 * CREATION DATE
 *   23 May 2006
 ***/
char putchar (char c);

/****f* Serial/process_serial_tx()
 * NAME
 *   void process_serial_tx();
 * FUNCTION
 *   This function implements passing data from serial TX FIFO into SBUF register.
 * SYNOPSIS
 *   Call this function from main loop.
 * PARAMETERS
 *   None.
 * OUTPUT
 *   None.
 * CREATION DATE
 *   23 May 2006
 ***/
void process_serial_tx();

/****f* Serial/process_serial_rx()
 * NAME
 *   void process_serial_rx();
 * FUNCTION
 *   This function implements passing data from serial SBUF register into RX FIFO.
 * SYNOPSIS
 *   Call this function from main loop.
 * PARAMETERS
 *   None.
 * OUTPUT
 *   None.
 * CREATION DATE
 *   01 Jun 2006
 ***/
void process_serial_rx();

#endif // __SERIAL_H__
