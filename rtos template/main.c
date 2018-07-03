/* FreeRTOS 8.2 Tiva Demo
 *
 * main.c
 *
 * Andy Kobyljanec
 *
 * This is a simple demonstration project of FreeRTOS 8.2 on the Tiva Launchpad
 * EK-TM4C1294XL.  TivaWare driverlib sourcecode is included.
 */
#include <stdint.h>
#include <stdbool.h>
#include "main.h"



// TivaWare includes
#include "driverlib/debug.h"
// Macros defining the memory map of the Tiva C Series device. This includes defines such as peripheral base address locations such as GPIO_PORTN_BASE.
#include "inc/hw_memmap.h"

#include "inc/hw_types.h"   // Defines common types and macros

// Defines and macros for System Control API of DriverLib. This includes API functions such as SysCtlClockSet and SysCtlClockGet
#include "driverlib/sysctl.h"

//Defines and macros for GPIO API of DriverLib. This includes API functions such as GPIOPinTypeGPIOOutput and GPIOPinWrite.
#include "driverlib/gpio.h"




// FreeRTOS includes
#include "FreeRTOSConfig.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"



uint32_t g_ui32SysClock;




// Main function
int main(void)
{



    // Initialize system clock to 120 MHz

	g_ui32SysClock = SysCtlClockFreqSet((SYSCTL_XTAL_25MHZ |
	                                             SYSCTL_OSC_MAIN |
	                                             SYSCTL_USE_PLL |
	                                             SYSCTL_CFG_VCO_480), 120000000);
	////////////////////////////////////////////											 
	// here we can create tasks	
    /////////////////////////////////////	
												 


    // start scheduler
												 
    vTaskStartScheduler();
	
	//you should never get here
	while(1)
    {
        
    }
    return 0;
}




/*  ASSERT() Error function
 *
 *  failed ASSERTS() from driverlib/debug.h are executed in this function
 */
void __error__(char *pcFilename, uint32_t ui32Line)
{
    // Place a breakpoint here to capture errors until logging routine is finished
    while (1)
    {
    }
}
