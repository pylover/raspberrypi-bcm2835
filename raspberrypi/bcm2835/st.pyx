# -*- coding: utf-8 -*-
"""
System Timer (ST)
"""

from _bcm2835 cimport *
__author__ = 'vahid'
__all__ = [
  'ST_CS',
  'ST_CLO',
  'ST_CHI',
]


"""
Defines for ST
GPIO register offsets from BCM2835_ST_BASE.
Offsets into the ST Peripheral block in bytes per 12.1 System Timer Registers
The System Timer peripheral provides four 32-bit timer channels and a single 64-bit free running counter.
BCM2835_ST_CLO is the System Timer Counter Lower bits register.
The system timer free-running counter lower register is a read-only register that returns the current value
of the lower 32-bits of the free running counter.
BCM2835_ST_CHI is the System Timer Counter Upper bits register.
The system timer free-running counter upper register is a read-only register that returns the current value
"""
ST_CS = c_BCM2835_ST_CS  # System Timer Control/Status
ST_CLO = c_BCM2835_ST_CLO  # System Timer Counter Lower 32 bits
ST_CHI = c_BCM2835_ST_CHI  # System Timer Counter Upper 32 bits


"""
    Delays for the specified number of milliseconds.
    Uses nanosleep(), and therefore does not use CPU until the time is up.
    However, you are at the mercy of nanosleep(). From the manual for nanosleep():
    If the interval specified in req is not an exact multiple of the granularity
    underlying  clock  (see  time(7)),  then the interval will be
    rounded up to the next multiple. Furthermore, after the sleep completes,
    there may still be a delay before the CPU becomes free to once
    again execute the calling thread.
    \param[in] millis Delay in milliseconds
    extern void bcm2835_delay (unsigned int millis);

    Delays for the specified number of microseconds.
    Uses a combination of nanosleep() and a busy wait loop on the BCM2835 system timers,
    However, you are at the mercy of nanosleep(). From the manual for nanosleep():
    If the interval specified in req is not an exact multiple of the granularity
    underlying  clock  (see  time(7)),  then the interval will be
    rounded up to the next multiple. Furthermore, after the sleep completes,
    there may still be a delay before the CPU becomes free to once
    again execute the calling thread.
    For times less than about 450 microseconds, uses a busy wait on the System Timer.
    It is reported that a delay of 0 microseconds on RaspberryPi will in fact
    result in a delay of about 80 microseconds. Your mileage may vary.
    \param[in] micros Delay in microseconds
    extern void bcm2835_delayMicroseconds (uint64_t micros);


    \defgroup st System Timer access
    Allows access to and delays using the System Timer Counter.
    @{

    Read the System Timer Counter register.
    \return the value read from the System Timer Counter Lower 32 bits register
    extern uint64_t bcm2835_st_read(void);

    Delays for the specified number of microseconds with offset.
    \param[in] offset_micros Offset in microseconds
    \param[in] micros Delay in microseconds
    extern void bcm2835_st_delay(uint64_t offset_micros, uint64_t micros);


"""