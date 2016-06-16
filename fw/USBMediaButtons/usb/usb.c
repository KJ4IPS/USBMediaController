/*
 * usb.c
 *
 *  Created on: Jun 15, 2016
 *      Author: Aaron
 */

#include <stdint.h>

#include "usb_const.h"

	uint8_t UsbState;

	/**
	 * USB Hardware Init: Setup USB peripheral
	 * called once, on device startup
	 */
	void usb_hwInit(void){
		UsbState = USB_DEVSTATE__DETACHED;
	}



