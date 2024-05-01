/*
 * audioFunc.c
 *
 *  Created on: 17 Apr 2024
 *      Author: rooth
 */


#include "DE1SoC_Addresses/DE1SoC_Addresses.h"
#include "DE1SoC_WM8731/DE1SoC_WM8731.h"
#include "HPS_Watchdog/HPS_Watchdog.h"
#include "HPS_GPIO/HPS_GPIO.h"
#include "HPS_I2C/HPS_I2C.h"
#include "Util/macros.h"
#include "shotAudio.h"

// Include necessary libraries
#include <math.h>
#include <stdlib.h>


void shot_audio (PWM8731Ctx_t audio);


void shot_audio (PWM8731Ctx_t audio){

    PHPSGPIOCtx_t gpio;
    PHPSI2CCtx_t i2c;

    WM8731_clearFIFO(audio, true,true);

    unsigned int totalSamples = sizeof(shotAudio) / sizeof(shotAudio[0]); // total number of samples in array
    unsigned int sampleIndex = 0;

    while (sampleIndex < totalSamples) {
        //Always check the FIFO Space before writing to the left/right channel pointers
    	unsigned int space;
    	WM8731_getFIFOSpace(audio, &space);

        //Debugging - display FIFO space on red LEDs.

        //If there is space in the write FIFO for both channels:
        if (space > 0) {
            // Output tone to left and right channels.
            WM8731_writeSample(audio, shotAudio[sampleIndex], shotAudio[sampleIndex]);
            sampleIndex++;
        }
        //Finally reset the watchdog.
        HPS_ResetWatchdog();
    }
}



