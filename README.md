# Using FreeRTOS in tm4c1294 connected launchpad 



## Getting Started

These instructions will give details on how to create simple template to use FreeRTOS in tm4c1294 connected launchpad 

## Prerequisites

What software you need to install 


> 1- Download and install the latest version of Code Composer Studio (CCS) and TivaWare as we described [here](------------)
 
 

> 2-Download and install the latest full version of FreeRTOS source code from [here](https://www.freertos.org/a00104.html)
 we are using in this project FreeRTOSv10.0.1




## Initialize code composer studio
same as we did in [test-gpio project](----------)
> 1- create new project
 
> 2- build variables for the paths that CCS will need to find your files.

> 3- Link driverlib.lib to Your Project

> 4- Add the INCLUDE search paths for the header files

## Include FreeRTOS files into project



> 1- click right mouse button on project folder and select new->Folder and name it Source.

> 2- import to that created Source folder all files that are in Source directory from downloaded FreeRTOS package. here We have added only kernel C files

> 3- To include port files create folder named portable inside Source folder. And then in portable folder we create CCS folder. And in CCS we create folder named ARM_CM4F. Then import porting files port.c,portmacro.h and portasm.asm to this folder from FreeRTOS package.

> 4- to inclode memory management file heap_1.c, which takes care of allocating and freeing memory for tasks and queues. create MemMang folder in portable folder and add file from same folder in downloaded package

> 5- And lastly FreeRTOS needs FreeRTOSConfig.h configuration file that keeps all freeRTOS related settings. Just import it from C:\ti\TivaWare_C_Series-2.1.4.178\examples\boards\ek-tm4c123gxl\freertos_demo.

> 6- create another folder Drivers in project root directory. This will be used to store microcontroller peripheral drivers like USART, I2C, ADC, button, LED and so on.

> 7- configure the project by going to project then select properties

> 8- include all directories containing .h files in your project by right click on project name --> properties --> include options then add all folders of free rtos containing .h files

> 9- in start up file add the following functions

  > * extern void xPortPendSVHandler(void);
  > * extern void vPortSVCHandler(void);
  > * extern void xPortSysTickHandler(void);
	
> 10- in start up file add xPortPendSVHandler, vPortSVCHandler, xPortSysTickHandler for the interrupt handllers (The PendSV handler ,SVCall handler ,The SysTick handler)



