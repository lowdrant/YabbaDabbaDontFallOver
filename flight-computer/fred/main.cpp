/** main.c
 * Marion Anderson
 */
#ifndef __MK66FX1M0__
#define __MK66FX1M0__
#endif  // __MK66FX1M0__

#include <Arduino.h>
#include <cmath>
#include <cstdint>
#include <kinetis.h>
#include <SPI.h>
#include <SD.h>

/**
#include "adc.h"
#include "as5145.h"
#include "cpucycle.h"
#include "trig_tables.h"
#include "PWM.h"
#include "bldc.h"
*/
uint32_t count = 0;

#define T_BLINK ((uint32_t) 100)     // blink period in ms
#define MAX_PWM ((uint16_t) 0xFFFF)  // maximum pwm amplitude
#define deg2rad(th) ((float)(th*180.0/3.1415926535))

extern volatile uint32_t systick_millis_count;  // from pins_teensy.c

static void blink_setup(void);
static inline void blink(void);
static void err(void);

// #define TEST_MOTOR
//BLDC eflite = {.R=0.26, .config='y', .N=4, .vd=0xffff, .vq=0, .v0=0};

int main(void)
{
    __disable_irq();
    blink_setup();
    Serial.begin(9600);  // PUT AFTER STARTING IRQ
    Serial.println("Initializing SD card...");

    // SD Setup
    const uint32_t cs_SD = BUILTIN_SDCARD;
    if (!SD.begin(cs_SD)) {
    Serial.println("Failed to open SD card, erroring");
        err();
    }
    Serial.println("SD card initialized");

    // Write File
    Serial.println("Writing file...");
    File f = SD.open("/fred-test.txt", FILE_WRITE);
    if (!f) {
        Serial.println("Failed to open file, erroring");
        err();
    }
    f.write("fredtest");
    f.close();
    Serial.println("Finished writing file.");

    uint32_t lastblink = 0;
    uint32_t t1, t2, c, a,b;
    int i;
    while (1) {
        // Blink
        if (systick_millis_count - lastblink > T_BLINK) {
            blink();
            lastblink = systick_millis_count;
            Serial.println("blink!");
            t1 = micros();
            for (i=0; i<10000; i++) {
                c = a / b;
            }
            t2 = micros();
            Serial.print("Elapsed time: "); Serial.println(t2-t1);
            Serial.print("result: "); Serial.println(c);
            c = 0;
        }
    }
    return 0;
}

/**
 * @brief Configure on-board LED to blink
 * @note this reserves Teensy Pin 13
 */
static void blink_setup(void)
{
    PORTC_PCR5 |= (uint32_t)(1 << 8);  // datasheet p.223
    GPIOC_PDDR |= (uint32_t)(1 << 5);  // datasheet p.2192
    GPIOC_PSOR |= (uint32_t)(1 << 5);  // turn on led, kinetis.h
}

/**
 * @brief Toggle on-board LED
 * @note blink_setup must be called before this function.
 */
static inline void blink(void)
{
    GPIOC_PTOR |= (uint32_t)(1 << 5);  // datasheet p.2191
}

static void err(void) {
    GPIOC_PSOR |= (uint32_t)(1<<5);
    while (1) {
        Serial.println("Error state");
        delay(1000);
    };
}
