/*
 * usb.c
 *
 *  Created on: Jun 15, 2016
 *      Author: Aaron
 */

#include <stdint.h>
#include <msp430.h>

#include "usb_const.h"
#include "usb_types.h"

	uint8_t UsbState = USB_DEVSTATE__DETACHED;
	uint8_t UsbNewAddress; //00 is reserverd to mean no address to set)
	uint8_t UsbActiveConfiguration = 0; //Zero is Unconfigured

#define m_unlockUSB() USBKEYPID = 0x9628
#define m_lockUSB() USBKEYPID = 0x0000

	void usb_suspend(void);
	void usb_resume(void);
	void usb_reset(void);
	void usb_handleInterupt(uint16_t source);
	void usb_onSetupPacket(void);

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

		// ??? Maybe set PUR here?

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
	 * this should probably be called frequently. at minimum every 5ms (for suspend purposes)
	 */
	void usb_doTasks(void){
		// Check for a setup packet, We can't use USBIV for this, as it will clean the NACs and possibly overwrite the buffer.
		if(USBIFG & SETUPIFG)
			usb_onSetupPacket();

		uint16_t usbStatus;
		if((usbStatus = USBIV))
			usb_handleInterupt(USBIV);

	}

	/**
	 * Handle USB interutps:
	 * Called when a USB event is generated
	 */
	void usb_handleInterupt(uint16_t source){
		switch(source){
		case 0x0002: //USB Power Drop (overload condition)
		case 0x0004: //PLL Lock Error
		case 0x0006: //PLL Signal Error
		case 0x0008: //PLL Range Error
		case 0x000A: //VBus ON
		case 0x000C: //VBus OFF
		case 0x0010: //Timestamp Event
		case 0x0012: //Endpoint 0 IN
		case 0x0014: //Endpoint 0 OUT
		case 0x0016: //USB Reset
		case 0x0018: //USB Suspend
		case 0x001A: //USB Resume
		case 0x0020: //Suspend Packet Recieved
		case 0x0022: //Setup Packet Overwrite
			break; //NYI
		default:
			break; //Unhandled
		}
	}

	/**
	 * Enter USB Suspend: called when the host enters suspends this device.
	 * We need to drop current consumption after this time to .5 mA or less
	 * Note that the suspend flag is set 3-4ms after the request, so we
	 * have a minimum of 6 ms to respond
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
		//Don't handle setup packets when not in an active state
		usbSetupPacket_t setupPacket;
		if(UsbState <= USB_DEVSTATE__POWERED)
			return;
		setupPacket = * (usbSetupPacket_t *) &USBSUBLK;
		switch(setupPacket.bRequest){
		case USB_REQUEST__GET_STATUS:
			//TODO: Assert no data
			//TODO assert device to host direction
			switch(setupPacket.bmRequestType.receipient){
			case USB_REQUEST_TARGET__DEV:
				//TODO Queue 0x0001 back to host
				//that means "Self powered, no RWU"
				break;
			case USB_REQUEST_TARGET__IF:
				//TODO RequestError if no such interface
				//TODO queue 0x0000 back to host
				//ALL bits are reserved (write 0)
				break;
			case USB_REQUEST_TARGET__EP:
				//TODO RequestError if no such endpoint
				//TODO queue halt bit back to host
				//all other bits reserved (write 0)
				break;
			}
			break;
		case USB_REQUEST__CLEAR_FEATURE:
			//TODO: Assert no data
			//Todo: Assert direction
			switch(setupPacket.wValue){
				case 0x00: //Endpoint Halt
					//TODO: Assert valid endpoint, stall otherwise
					//TODO: clear specified EP's HALT
					break;
				case 0x01: //Device RWU
					//TODO: Stall, we don't support RWU
					break;
				case 0x02: //Device Test Mode
					//TODO: Stall, we don't have any test mode (note: we still need to implement those
					//		required by the spec)
					break;
				default:
					//TODO: Stall, unexpected/unsupported request
					break;
			}
			break;
		case USB_REQUEST__SET_FEATURE:
			//TODO: Assert no data
			//TODO: Assert direction
			switch(setupPacket.wValue){
			case 0x00: //Endpoint Halt
				//TODO: Assert valid endpoint, stall otherwise
				//TODO: set specified EP's HALT
				break;
			case 0x01: //Device RWU
				//TODO: Stall, we don't support RWU
				break;
			case 0x02: //Device Test Mode
				//TODO: Stall, clearing test mode is prohibited by spec
				break;
			default:
				//TODO: Stall, unexpected/unsupported request
				break;
			}
			break;
		case USB_REQUEST__SET_ADDRESS:
			//TODO: assert zero request, index, and length
			// IMPORTANT: Unlike all other USB requests, SET_ADDRESS does not take effect until after the status stage
			UsbNewAddress = (uint8_t) setupPacket.wValue;
			UsbState = USB_DEVSTATE__PREADDR;
			break;
		case USB_REQUEST__GET_DESCRIPTOR:
			//TODO Assert RT 0x80
			//TODO Assert valid descriptor
			//TODO queue the first wLength bytes of the requested descriptor back.
			break;
		case USB_REQUEST__SET_DESCRIPTOR:
			//We don't support the host modifying descriptors.
			//TODO STALL
			break;
		case USB_REQUEST__GET_CONFIG:
			//Queue USBActiveConfiguration back to host
			break;
		case USB_REQUEST__SET_CONFIG:
			//TODO assert state is not default, powrered, or attached
			//TODO assert no data
			//TODO assert a valid configuration
			USBActiveConfiguration = setupPacket.wValue;
			break;
		case USB_REQUEST__GET_INTERFACE:
			//TODO assert state is configured
			//TODO assert value is zero, length is one
			//TODO queue (wIndex)tn interface settings
			break;
		case USB_REQUEST__SET_INTERFACE:
			//TODO stall, we don't support alternate interface
			break;
		case USB_REQUEST__SYNCH_FRAME:
			//TODO stall, we don't support Iso transfers
			break; //NYI
		}

	}



