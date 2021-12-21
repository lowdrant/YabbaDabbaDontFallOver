/** cpucycle.h
 *
 * CPU clock interface definitions. Relies on kinetis.h.
 *
 * Based on code by an unknown author
 * Marion Anderson
 * June 2021
 */
#ifndef _CPUCYCLE_H
#define _CPUCYCLE_H

#include "kinetis.h"

static inline uint32_t CLK_CYCLES_TO_MICROS(uint32_t cycles)
{
    return cycles*1000 / F_CPU;
}
static inline uint32_t CLK_CYCLES_TO_MILLIS(uint32_t cycles)
{
    return cycles*1000*1000 / F_CPU ;
}

/**
 * @brief reset cpu cucle count (ARM_DWT_CYCCNT)
 */
void reset_cpu_cycle_counter(void);

/**
 * @brief Start CPU cycle counter.
 */
void start_cpu_cycle_counter(void);

/**
 * @brief Get CPU cycles (ARM_DWT_CYCCNT)
 */
inline uint32_t get_cpu_cycles(void);

/**
 * @brief Get CPU time in microseconds
 * @retval uint32_t CPU time in microseconds
 */
inline uint32_t cmicros(void);

/**
 * @brief Get CPU time in milliseconds
 * @retval CPU time in milliseconds
 */
inline uint32_t cmillis(void);

#endif  // _CPUCYCLE_H