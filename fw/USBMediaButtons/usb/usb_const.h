/*
 * usb_const.h
 *
 * 	This contains many USB constants, as needed by other components
 *
 *  Created on: Jun 15, 2016
 *      Author: Aaron
 */

#ifndef USB_CONST_H_
#define USB_CONST_H_


// Device States
#define USB_DEVSTATE__DETACHED 		0
#define USB_DEVSTATE__POWERED		1
#define USB_DEVSTATE__DEFAULT		2
#define USB_DEVSTATE__ADDRESS		3
#define USB_DEVSTATE__CONFIGURED	4


// Request Ids
#define USB_REQUEST__GET_STATUS		0x00
#define USB_REQUEST__CLEAR_FEATURE	0x01
#define USB_REQUEST__SET_FEATURE	0x03
#define USB_REQUEST__SET_ADDRESS	0x05
#define USB_REQUEST__GET_DESCRIPTOR	0x06
#define USB_REQUEST__SET_DESCRIPTOR 0x07
#define USB_REQUEST__GET_CONFIG		0x08
#define USB_REQUEST__SET_CONFIG		0x09
#define USB_REQUEST__GET_INTERFACE	0x0A
#define USB_REQUEST__SET_INTERFACE	0x0B
#define USB_REQUEST__SYNCH_FRAME	0x0C


// Descriptor Types
#define USB_DESC_TYPE__DEVICE		0x01
#define USB_DESC_TYPE__CONFIG		0x02
#define USB_DESC_TYPE__STRING		0x03
#define USB_DESC_TYPE__INTERFACE	0x04
#define USB_DESC_TYPE__ENDPOINT		0x05



#endif /* USB_CONST_H_ */
