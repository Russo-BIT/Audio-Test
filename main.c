/*
 * DE1-SoC Audio Example
 *
 * Generates a sinusoidal tone waveform
 * Writes stereo audio to the CODEC (LINE OUT)
 *
 *  Created on: 03 Feb 2018
 *  Updated on: 11 Feb 2024
 */

#include "DE1SoC_Addresses/DE1SoC_Addresses.h"
#include "DE1SoC_WM8731/DE1SoC_WM8731.h"
#include "HPS_Watchdog/HPS_Watchdog.h"
#include "HPS_GPIO/HPS_GPIO.h"
#include "HPS_I2C/HPS_I2C.h"
#include "FPGA_PIO/FPGA_PIO.h"
#include "Util/macros.h"
#include "shotAudio.h"


//Include Floating Point Math Libraries
#include <math.h>

//Debugging Function (same as last lab)
#include <stdlib.h>
void exitOnFail(signed int status, signed int successStatus){
    if (status != successStatus) {
        exit((int)status); //Add breakpoint here to catch failure
    }
}


//
// Main Function
// =============
int main(void) {
    //Drivers
    PFPGAPIOCtx_t leds;
    PWM8731Ctx_t audio;
    PHPSGPIOCtx_t gpio;
    PHPSI2CCtx_t   i2c;
    //Variables

    double ampl  = 0.0;  // Tone amplitude (i.e. volume)
    //Initialise Drivers
    exitOnFail(FPGA_PIO_initialise(LSC_BASE_RED_LEDS,LSC_CONFIG_RED_LEDS, &leds), ERR_SUCCESS);
    exitOnFail(HPS_GPIO_initialise(LSC_BASE_ARM_GPIO, ARM_GPIO_DIR, ARM_GPIO_I2C_GENERAL_MUX, 0, &gpio), ERR_SUCCESS);
    exitOnFail(HPS_I2C_initialise(LSC_BASE_I2C_GENERAL, I2C_SPEED_STANDARD, &i2c), ERR_SUCCESS);
    exitOnFail(WM8731_initialise(LSC_BASE_AUDIOCODEC, i2c, &audio), ERR_SUCCESS);
    //Clear both FIFOs
    WM8731_clearFIFO(audio, true,true);
    //Initialise Phase Accumulator
    unsigned int sampleRate;
    WM8731_getSampleRate(audio, &sampleRate);
    ampl  = pow(2,25);                   // Pick desired amplitude (e.g. 2^23). WARNING: If too high = deafening!

    static unsigned int sampleIndex = 0;
    unsigned int sample;

    // Primary function while loop
    while (1) {
        //Always check the FIFO Space before writing to the left/right channel pointers
    	unsigned int space;
    	WM8731_getFIFOSpace(audio, &space);
        //Debugging - display FIFO space on red LEDs.
        FPGA_PIO_setOutput(leds, space, UINT32_MAX);
        //If there is space in the write FIFO for both channels:
        if (space > 0) {
            // Read a sample from the shot audio array and write it to both channels
        	sample = 24*shotAudio[sampleIndex];
            WM8731_writeSample(audio, sample, sample);

            // Increment sample index and handle looping
            sampleIndex++;

            if (sampleIndex >= 4080) {
            	sampleIndex = 0;
            }

        }
        
        //Finally reset the watchdog.
        HPS_ResetWatchdog();
    }
}

