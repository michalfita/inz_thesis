;
;I2C EQUates
I2CCLK  equ     0A0h            ;Slave address for PCF8583 clock chip.
I2CRAM  equ     0AEh            ;Slave address for PCF8570 RAM chip.
I2CIO   equ     4Eh             ;Slave address for PCF8574 I/O expander.
I2CLED  equ     76h             ;Slave address for SAA1064 LED driver.

                                ;I2C Data storage locations
BitCnt  data    0Ah             ;Bit counter for I2C routines.
ByteCnt data    0Bh             ;Byte counter for I2C routines.
SlvAdr  data    0Ch             ;Slave address for I2C routines.

tout    data    0Dh             ;timeout register

XmtDat  data    10h             ;I2C transmit buffer, 8 bytes max.
RcvDat  data    18h             ;I2C receive buffer, 8 bytes max.


I2CFlags    data    22h            ;Location for bit flags
NoAck       bit     I2CFlags.0     ;I2C no acknowledge flag.
BusFault    bit     I2CFlags.1     ;I2C bus fault flag.
I2CBusy     bit     I2CFlags.2     ;I2C busy flag.


SCLPin  bit     P1.6            ;I2C serial clock line.
SDAPin  bit     P1.7            ;I2C serial data line.
;-------------------------------------------------------------
;  I2C Routines
;-------------------------------------------------------------
;
; BitDly - insures minimum high and low clock times on I2C bus.
; This routine must be tuned for the actual oscillator frequency used, shown
; here tuned for a 12MHz clock. Note that the CALL instruction that invokes 
; BitDly already uses 2 machine cycles.

BitDly:    NOP                    ;NOPs to delay 5 microseconds (minus 4
                                  ;  machine cycles for CALL and RET).
           RET


; SCLHigh - sends SCL pin high and waits for any clock stretching peripherals.

SCLHigh:   SETB    SCLPin         ;Set SCL from our end.
           JNB     SCLPin,$       ;Wait for pin to actually go high.
           RET


; SendStop - sends an I2C stop, releasing the bus.

SendStop:  CLR     SDAPin         ;Get SDA ready for stop.
           CALL    SCLHigh        ;Set clock for stop.
           CALL    BitDly
           SETB    SDAPin         ;Send I2C stop.
           CALL    BitDly
           CLR     I2CBusy        ;Clear I2C busy status.
           RET                    ;Bus should now be released.


; SendByte - sends one byte of data to an I2C slave device.
; Enter with:
;   ACC = data byte to be sent.

SendByte:  MOV     BitCnt,#8      ;Set bit count.

SBLoop:    RLC     A              ;Send one data bit.
           MOV     SDAPin,C       ;Put data bit on pin.
           CALL    SCLHigh        ;Send clock.
           CALL    BitDly
           CLR     SCLPin
           CALL    BitDly
           DJNZ    BitCnt,SBloop  ;Repeat until all bits sent.

           SETB    SDAPin         ;Release data line for acknowledge.
           CALL    SCLHigh        ;Send clock for acknowledge.
           CALL    BitDly
           JNB     SDAPin,SBEX    ;Check for valid acknowledge bit.
           SETB    NoAck          ;Set status for no acknowledge.
SBEX:      CLR     SCLPin         ;Finish acknowledge bit.
           CALL    BitDly
           RET


; GoMaster - sends an I2C start and slave address.
; Enter with:
;   SlvAdr = slave address.

GoMaster:  SETB    I2CBusy        ;Indicate that I2C frame is in progress.
           CLR     NoAck          ;Clear error status flags.
           CLR     BusFault
           JNB     SCLPin,Fault   ;Check for bus clear.
           JNB     SDAPin,Fault
           CLR     SDAPin         ;Begin I2C start.
           CALL    BitDly
           CLR     SCLPin
           CALL    BitDly         ;Complete I2C start.
           MOV     A,SlvAdr       ;Get slave address.
           CALL    SendByte       ;Send slave address.
           RET

Fault:     SETB    BusFault       ;Set fault status
           RET                    ;  and exit.


; SendData - sends one or more bytes of data to an I2C slave device.
; Enter with:
;   ByteCnt = count of bytes to be sent.
;   SlvAdr  = slave address.
;   @R0     = data to be sent (the first data byte will be the 
;             subaddress, if the I2C device expects one).

SendData:  CALL    GoMaster       ;Acquire bus and send slave address.
           JB      NoAck,SDEX     ;Check for slave not responding.

SDLoop:    MOV     A,@R0          ;Get data byte from buffer.
           CALL    SendByte       ;Send next data byte.
           INC     R0             ;Advance buffer pointer.
           JB      NoAck,SDEX     ;Check for slave not responding.
           DJNZ    ByteCnt,SDLoop ;All bytes sent?

SDEX:      CALL    SendStop       ;Done, send an I2C stop.
           RET


;RcvByte - receives one byte of data from an I2C slave device.
; Returns:
;   ACC = data byte received.

RcvByte:   MOV     BitCnt,#8      ;Set bit count.

RBLoop:    CALL    SCLHigh        ;Read one data bit.
           CALL    BitDly
           MOV     C,SDAPin       ;Get data bit from pin.
           RLC     A              ;Rotate bit into result byte.
           CLR     SCLPin
           CALL    BitDly
           DJNZ    BitCnt,RBLoop  ;Repeat until all bits received.

           PUSH    ACC            ;Save accumulator
           MOV     A,ByteCnt
           CJNE    A,#1,RBAck     ;Check for last byte of frame.
           SETB    SDAPin         ;Send no acknowledge on last byte.
           SJMP    RBAClk

RBAck:     CLR     SDAPin         ;Send acknowledge bit.
RBAClk:    CALL    SCLHigh        ;Send acknowledge clock.
           POP     ACC            ;Restore accumulator
           CALL    BitDly
           CLR     SCLPin
           SETB    SDAPin         ;Clear acknowledge bit.
           CALL    BitDly
           RET


;RcvData - receives sends one or more bytes of data from an I2C slave device.
; Enter with:
;   ByteCnt = count of bytes to be sent.
;   SlvAdr  = slave address.
; Returns:
;   @R0     = data received.

; Note: to receive with a subaddress, use SendData to set the subaddress
;   first (no provision for repeated start).

RcvData:   INC     SlvAdr         ;Set for READ of slave.
           CALL    GoMaster       ;Acquire bus and send slave address.
           JB      NoAck,RDEX     ;Check for slave not responding.
RDLoop:
           CALL    RcvByte        ;Receive next data byte.
           MOV     @R0,A          ;Save data byte in buffer.
           INC     R0             ;Advance buffer pointer.
           DJNZ    ByteCnt,RDLoop ;Repeat until all bytes received.

RDEX:      CALL    SendStop       ;Done, send an I2C stop.
           RET
;
;==================== Example use =========================
;
;  Setting and reading the time from a PCF8583 clock, with regard to the century
;
;-------------------------------------
gettime:
        mov     SlvAdr,#I2CCLK  ;Write subaddress to PCF8583 clock/ram.
        mov     R0,#XmtDat      ;Start of data.
        mov     ByteCnt,#1      ;Send one byte (subaddress).
        call    SendData
        mov     SlvAdr,#I2CCLK  ;Read back data from PCF8583 clock/ram.
        mov     R0,#RcvDat      ;Start of data.
        mov     ByteCnt,#7      ;Read 7 data bytes.
        call    RcvData
        mov     R0,#RcvDat+5    ;Start of data.
        mov     A,@R0           ;date/year
        anl     A,#00111111b    ;mask out the year
        mov     DPTR,#currtime  ;store this stuff in currtime
        movx    @DPTR,A         ;store date
        inc     DPTR
        inc     R0
        mov     A,@R0           ;weekday/month
        anl     A,#00011111b    ;mask out the weekday
        movx    @DPTR,A         ;store month
        dec     R0
        mov     A,@R0           ;date/year
        mov     B,#64d          ;shift it down
        div     AB
        xch     A,R1            ;save this
        mov     DPTR,#baseyear
        movx    A,@DPTR         ;get the base year (year div 4)
        add     A,R1
        cjne    A,#100d,gettime1   ;is year < 100
gettime1:
        jc      gettime2
        subb    A,#100d         ;century fix up
gettime2:
        mov     B,#10d          ;convert to BCD
        div     AB
        swap    A
        add     A,B
        mov     DPTR,#currtime+2
        movx    @DPTR,A         ;store year
        inc     DPTR
        dec     R0
        mov     A,@R0           ;hours
        movx    @DPTR,A         ;store hours
        inc     DPTR
        dec     R0
        mov     A,@R0           ;min
        movx    @DPTR,A         ;store min
        inc     DPTR
        dec     R0
        mov     A,@R0           ;sec
        movx    @DPTR,A         ;store sec
        call    newline
        ret
;
;-------------------------------------
settime:                        ;gets a string and sets the time
        call    newline
        mov     DPTR,#settstr
        call    cputs
        mov     A,#':'          ;trigger
        call    putch
        mov     DPTR,#statstr
        call    gets            ;get the time string
                                ;stop the clock
        mov     XmtDat,#0h      ;subaddress
        mov     XmtDat+1,#084h  ;control register
        mov     SlvAdr,#I2CCLK  ;Write address of PCF8583 clock/ram.
        mov     R0,#XmtDat      ;Start of data.
        mov     ByteCnt,#2      ;Send 2 bytes (subaddress,reg 0).
        call    SendData
                                ;build the time data
        mov     DPTR,#statstr+11
        mov     XmtDat,#0h      ;subaddress
        mov     XmtDat+1,#0h    ;control register
        mov     XmtDat+2,#0h    ;csec
        movx    A,@DPTR         ;1 sec
        subb    A,#30h
        mov     R1,A
        mov     DPTR,#statstr+10;10 sec
        movx    A,@DPTR
        subb    A,#30h
        swap    A
        add     A,R1            ;add the 1 sec digit
        mov     XmtDat+3,A      ;got the secs
        mov     DPTR,#statstr+9 ;1 min
        movx    A,@DPTR
        subb    A,#30h
        mov     R1,A
        mov     DPTR,#statstr+8 ;10 min
        movx    A,@DPTR
        subb    A,#30h
        swap    A
        add     A,R1            ;add the 1 min digit
        mov     XmtDat+4,A      ;got the mins
        mov     DPTR,#statstr+7 ;1 hr
        movx    A,@DPTR
        subb    A,#30h
        mov     R1,A
        mov     DPTR,#statstr+6 ;10 hr
        movx    A,@DPTR
        subb    A,#30h
        swap    A
        add     A,R1            ;add the 1 hr digit
        mov     XmtDat+5,A      ;got the hrs
        mov     DPTR,#statstr+5 ;1 yr
        movx    A,@DPTR
        subb    A,#30h
        mov     R1,A
        mov     DPTR,#statstr+4 ;10 yr
        movx    A,@DPTR
        subb    A,#30h
        mov     B,#10d          ;multiply 10 year by 10 (ie not BCD)
        mul     AB
        add     A,R1            ;add the 1 yr digit
        mov     B,#4
        div     AB              ;get year mod 4
        mov     R2,B            ;save it in R2
        mov     B,#4
        mul     AB              ;get the base year
        mov     R0,A            ;save it in R0
        mov     DPTR,#statstr+3 ;1 month
        movx    A,@DPTR
        subb    A,#30h
        mov     R1,A
        mov     DPTR,#statstr+2 ;10 month
        movx    A,@DPTR
        subb    A,#30h
        swap    A
        add     A,R1            ;add the 1 month digit
        mov     XmtDat+7,A      ;got the months
        mov     A,R2            ;get the year mod
        mov     B,#64d          ;scale it up
        mul     AB
        mov     R2,A            ;save it
        mov     DPTR,#statstr+1 ;1 day
        movx    A,@DPTR
        subb    A,#30h
        mov     R1,A
        mov     DPTR,#statstr   ;10 day
        movx    A,@DPTR
        subb    A,#30h
        swap    A
        add     A,R1            ;add the 1 day digit
        add     A,R2            ;add year info
        mov     XmtDat+6,A      ;got the day
        mov     A,R0            ;restore base year
        mov     DPTR,#baseyear
        movx    @DPTR,A         ;save it external memory

        mov     SlvAdr,#I2CCLK  ;Write address of PCF8583 clock/ram.
        mov     R0,#XmtDat      ;Start of data.
        mov     ByteCnt,#8      ;Send 8 bytes (subaddress,reg 0..6).
        call    SendData
                                ;start the clock
        mov     XmtDat,#0h      ;addr
        mov     XmtDat+1,#4h    ;control register
        mov     SlvAdr,#I2CCLK  ;Write address of PCF8583 clock/ram.
        mov     R0,#XmtDat      ;Start of data.
        mov     ByteCnt,#2      ;Send 2 bytes (subaddress,reg 0).
        call    SendData
        ret
;
