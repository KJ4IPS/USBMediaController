/*
 * usb_desc.h
 *
 * This contains all of the magic bytes that make up the USB descriptors
 *
 *  Created on: Jun 15, 2016
 *      Author: Aaron
 */

#ifndef USB_DESC_H_
#define USB_DESC_H_

#include <usb_const.h>

#define USBDWORD( a ) ( a & 0xFF ),( a >> 8 )

//**** Device Descriptor ****//

const uint8_t[] deviceDescriptor{
	0x12, 				// Length of this descriptor
	USB_DESC_TYPE__DEVICE, // Descriptor type
	USBDWORD(0x0210),	// Usb Spec version: 2.10
	0x00,				// USB Class: Per-Configuration
	0x00,				// USB SubClass: Per-Configuration
	0x00,				// USB Protocol: Per-Configuration
	0x40,				// Endpoint 0 Max Packet Size: 64
	USBDWORD(0x2047),	// Vendor ID
	USBDWORD(0x0915),	// Product ID
	USBDWORD(0x0001),	// Device Revision
	1,					// Manufacturer String Index
	2,					// Product String Index
	0,					// Serial Number String
	1					// Number of configurations

}

//**** Configuration Descriptors ****//

// This stack only supports a single configuration..
const uint8_t[] configurationDescriptor{
	//-- Configuration Header
		0x09,				// Length of this Desciptor (Config Header)
		USB_DESC_TYPE__CONFIG,
		USBDWORD(0x0019),	// Full length of Configuration
		1,					// Number of Interfaces
		0,					// Configuration Value for SetConfiguration()
		0,					// Configuration Description String
		0x00;				// Device Attributes.
		0x32;				// Maximum Current (2ma per unit)
	//-- Interface 0: HID
		0x09,				// Length of this Descriptor
		USB_DESC_TYPE__INTERFACE,
		0,					// Interface Index
		0, /*????*/			// bAlternateSetting ??
		1,					// Number of Endpoints used for this interface
		0x21,				// Interface Class: HID
		0x01,				// Interface Subclass: Basic
		0x01,				// Interface Protocol: Basic
		0,					// String to describe this interface
	//-- Endpoint IN1: HID Interupt line
		0x07,				//Length of this descriptor
		USB_DESC_TYPE__ENDPOINT,
		0x81,				// Endpoint: IN1
		0x03,				// Attributes: Interrupt Mode
		USBDWORD(0x0040),	// EP Max packet size: 64
		0x01				// Polling Interval:
}

//**** String Descriptors ****//


const uint8_t[] languageString {
	0x04,
	USB_DESC_TYPE__STRING,
	USBDWORD(0x0409), 		// Multi-Lang not Supported
}

const uint8_t[] manufString {
	0x0A,
	USB_DESC_TYPE__STRING,
	'K','i','l','o','s','p','a','r','k'
}

const uint8_t[] productString{
	// "Media Box"
	0x0C,
	USB_DESC_TYPE__STRING,
	'C','o','n','t','r','o','l',' ','B','o','x'
}

const uint8_t[] stringTable{
	&languageString,
	&manufString,
	&productString
}


#endif /* USB_DESC_H_ */
