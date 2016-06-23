/*
 * usb.c
 *
 *  Created on: Jun 15, 2016
 *      Author: Aaron
 */

#include <stdint.h>
#include <msp430.h>

#include "usb_const.h"

	uint8_t UsbState = USB_DEVSTATE__DETACHED;

#define m_unlockUSB() USBKEYPID = 0x9628
#define m_lockUSB() USBKEYPID = 0x0000

	/**
	 * USB Hardware Init: Setup USB peripheral
	 * called once, on device startup
	 */
	void usb_hwInit(void){
		UsbState = USB_DEVSTATE__DETACHED;

		//Unlock USB Peripheral Configurations
		m_unlockUSB();

		// Setup USB PLL for use with a 4mhz crystal
		/* USBPLLDIVB UPQB = 0x01
		 * USBPLLDIVB UBMB = 0x17 */
		USBPLLDIVB = (0x01 << 8) | 0x17;

		//Enable PLL as a source for USB
		USBPLLCTL |= UPLLEN;

		//Enable the USB PHY
		USBPHYCTL |= PUOPE;

		//Enable the zero endpoint, and enable flagging
		USBIEPCNF_0 |= UBME | USBIIE;
		USBOEPCNF_0 |= UBME | USBIIE;

		//enable the usb module
		USBCNF |= USB_EN;

		//Relock USB Configs
		m_lockUSB();

		UsbState = USB_DEVSTATE__POWERED;
	}


	/**
	 * Set USB Address
	 * this should be called in responce to a set-address request from the host.
	 */
	void usb_setAddress(uint8_t address){
		m_unlockUSB();
		USBFUNADR = address;
		m_lockUSB();
	}

	/**
	 * Do USB Tasks: handle usb events from peripheral
	 */
	void usb_doTasks(void){
		// Check for a setup packet, We can't use USBIV for this, as it will clean the NACs and possiblt overwrite the buffer.
		if(USBIFG & SETUPIFG)
			usb_onSetupPacket();

		if(uint8_t usbStatus = USBIV)
			usb_handleInterupt(USBIV);

	}

	/**
	 * Handle USB interutps:
	 * Called when a USB event is generated
	 */
	usb_handleInterupt(uint8_t source){

	}

	/**
	 * Enter USB Suspend: called when the host enters suspends this device.
	 * We need to drop current consumption after this time to .5 mA or less
	 */
	void usb_suspend(void){
		// In order to get current consumption down to acceptable levels, the PLL must stop.
		m_unlockUSB();
		USBPLLCTL &= ~UPLLEN;
		m_lockUSB();
	}

	/**
	 * Resume from Suspend: called when the host exits suspend,
	 * we are now allowed to draw more than 1/2 ma.
	 */
	void usb_resume(void){
		//Turn the PLL back on, it was turned off when suspend was entered
		m_unlockUSB();
		USBPLLCTL |= UPLLEN;
		m_lockUSB();

	}


	/**
	 * USB Setup Packet processesing
	 * called whenever a usb setup packet has been recieved
	 */
	void usb_onSetupPacket(void){

	}



