/*
 * usb_struct.h
 *
 *  Created on: Jul 1, 2016
 *      Author: Aaron
 */

#ifndef USB_USB_TYPES_H_
#define USB_USB_TYPES_H_

#include <stdint.h>

struct usbRequestType{
	uint8_t			direction	:1;
	uint8_t			type		:2;
	uint8_t			receipient	:5;
} __attribute__ ((packed));

typedef struct usbRequestType usbRequestType_t;

struct usbSetupPacket {
	usbRequestType_t	bmRequestType;
	uint8_t				bRequest;
	uint16_t			wValue;
	uint16_t			wIndex;
	uint16_t			wLength;
} __attribute__ ((packed)) __attribute__((__may_alias__));

typedef struct usbSetupPacket usbSetupPacket_t;

struct usbEndpointFlags

#endif /* USB_USB_TYPES_H_ */
