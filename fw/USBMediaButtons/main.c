#include <msp430.h> 

#include "usb/usb.h"

/*
 * main.c
 */
int main(void) {
    WDTCTL = WDTPW | WDTHOLD;	// Stop watchdog timer
	
    usb_hwInit();

    return 0;
}
