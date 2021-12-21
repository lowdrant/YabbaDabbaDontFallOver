/** cpucycle.c
 *
 * CPU clock interface definitions. Relies on kinetis.h.
 *
 * Based on code by an unknown author
 * Marion Anderson
 * June 2021
 */
#include "kinetis.h"
#include "cpucycle.h"

#ifdef __cplusplus
extern "C" {
#endif  // _cplusplus


void start_cpu_cycle_counter(void)
{
    ARM_DEMCR = ARM_DEMCR | 0x01000000;
    ARM_DWT_CYCCNT = 0;              // reset the counter
    ARM_DWT_CTRL = ARM_DWT_CTRL | 1; // enable the counter
}
inline void reset_cpu_cycle_counter(void) { ARM_DWT_CYCCNT = 0; }
inline uint32_t get_cpu_cycles(void) { return ARM_DWT_CYCCNT; }
inline uint32_t cmicros(void) { return CLK_CYCLES_TO_MICROS(ARM_DWT_CYCCNT); }
inline uint32_t cmillis(void) { return CLK_CYCLES_TO_MILLIS(ARM_DWT_CYCCNT); }

#ifdef __cplusplus
}
#endif  // _cplusplus
