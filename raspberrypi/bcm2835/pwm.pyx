# -*- coding: utf-8 -*-
from _bcm2835 cimport *
__author__ = 'vahid'
__all__ = [
  'PWM_CONTROL',
  'PWM_STATUS',
  'PWM_DMAC',
  'PWM0_RANGE',
  'PWM0_DATA',
  'PWM_FIF1',
  'PWM1_RANGE',
  'PWM1_DATA',
  'PWMCLK_CNTL',
  'PWMCLK_DIV',
  'PWM_PASSWRD',
  'PWM1_MS_MODE',
  'PWM1_USEFIFO',
  'PWM1_REVPOLAR',
  'PWM1_OFFSTATE',
  'PWM1_REPEATFF',
  'PWM1_SERIAL',
  'PWM1_ENABLE',
  'PWM0_MS_MODE',
  'PWM_CLEAR_FIFO',
  'PWM0_USEFIFO',
  'PWM0_REVPOLAR',
  'PWM0_OFFSTATE',
  'PWM0_REPEATFF',
  'PWM0_SERIAL',
  'PWM0_ENABLE',

  "PWM_CLOCK_DIVIDER_32768",
  "PWM_CLOCK_DIVIDER_16384",
  "PWM_CLOCK_DIVIDER_8192",
  "PWM_CLOCK_DIVIDER_4096",
  "PWM_CLOCK_DIVIDER_2048",
  "PWM_CLOCK_DIVIDER_1024",
  "PWM_CLOCK_DIVIDER_512",
  "PWM_CLOCK_DIVIDER_256",
  "PWM_CLOCK_DIVIDER_128",
  "PWM_CLOCK_DIVIDER_64",
  "PWM_CLOCK_DIVIDER_32",
  "PWM_CLOCK_DIVIDER_16",
  "PWM_CLOCK_DIVIDER_8",
  "PWM_CLOCK_DIVIDER_4",
  "PWM_CLOCK_DIVIDER_2",
  "PWM_CLOCK_DIVIDER_1",


]

"""
Defines for PWM, word offsets (ie 4 byte multiples)
"""
PWM_CONTROL = c_BCM2835_PWM_CONTROL
PWM_STATUS = c_BCM2835_PWM_STATUS
PWM_DMAC = c_BCM2835_PWM_DMAC
PWM0_RANGE = c_BCM2835_PWM0_RANGE
PWM0_DATA = c_BCM2835_PWM0_DATA
PWM_FIF1 = c_BCM2835_PWM_FIF1
PWM1_RANGE = c_BCM2835_PWM1_RANGE
PWM1_DATA = c_BCM2835_PWM1_DATA


"""
Defines for PWM Clock, word offsets (ie 4 byte multiples)
"""
PWMCLK_CNTL = c_BCM2835_PWMCLK_CNTL
PWMCLK_DIV = c_BCM2835_PWMCLK_DIV
PWM_PASSWRD = c_BCM2835_PWM_PASSWRD  # Password to enable setting PWM clock

PWM1_MS_MODE = c_BCM2835_PWM1_MS_MODE  # Run in Mark/Space mode
PWM1_USEFIFO = c_BCM2835_PWM1_USEFIFO  # Data from FIFO
PWM1_REVPOLAR = c_BCM2835_PWM1_REVPOLAR  # Reverse polarity
PWM1_OFFSTATE = c_BCM2835_PWM1_OFFSTATE  # Ouput Off state
PWM1_REPEATFF = c_BCM2835_PWM1_REPEATFF  # Repeat last value if FIFO empty
PWM1_SERIAL = c_BCM2835_PWM1_SERIAL  # Run in serial mode
PWM1_ENABLE = c_BCM2835_PWM1_ENABLE  # Channel Enable

PWM0_MS_MODE = c_BCM2835_PWM0_MS_MODE  # Run in Mark/Space mode
PWM_CLEAR_FIFO = c_BCM2835_PWM_CLEAR_FIFO  # Clear FIFO
PWM0_USEFIFO = c_BCM2835_PWM0_USEFIFO  # Data from FIFO
PWM0_REVPOLAR = c_BCM2835_PWM0_REVPOLAR  # Reverse polarity
PWM0_OFFSTATE = c_BCM2835_PWM0_OFFSTATE  # Ouput Off state
PWM0_REPEATFF = c_BCM2835_PWM0_REPEATFF  # Repeat last value if FIFO empty
PWM0_SERIAL = c_BCM2835_PWM0_SERIAL  # Run in serial mode
PWM0_ENABLE = c_BCM2835_PWM0_ENABLE  # Channel Enable


"""
Specifies the divider used to generate the PWM clock from the system clock.
Figures below give the divider, clock period and clock frequency.
Clock divided is based on nominal PWM base clock rate of 19.2MHz
The frequencies shown for each divider have been confirmed by measurement
"""
PWM_CLOCK_DIVIDER_32768 = c_BCM2835_PWM_CLOCK_DIVIDER_32768  # ///< 32768 = 585Hz
PWM_CLOCK_DIVIDER_16384 = c_BCM2835_PWM_CLOCK_DIVIDER_16384  # ///< 16384 = 1171.8Hz
PWM_CLOCK_DIVIDER_8192 = c_BCM2835_PWM_CLOCK_DIVIDER_8192  # ///< 8192 = 2.34375kHz
PWM_CLOCK_DIVIDER_4096 = c_BCM2835_PWM_CLOCK_DIVIDER_4096  # ///< 4096 = 4.6875kHz
PWM_CLOCK_DIVIDER_2048 = c_BCM2835_PWM_CLOCK_DIVIDER_2048  # ///< 2048 = 9.375kHz
PWM_CLOCK_DIVIDER_1024 = c_BCM2835_PWM_CLOCK_DIVIDER_1024  # ///< 1024 = 18.75kHz
PWM_CLOCK_DIVIDER_512 = c_BCM2835_PWM_CLOCK_DIVIDER_512  # ///< 512 = 37.5kHz
PWM_CLOCK_DIVIDER_256 = c_BCM2835_PWM_CLOCK_DIVIDER_256  # ///< 256 = 75kHz
PWM_CLOCK_DIVIDER_128 = c_BCM2835_PWM_CLOCK_DIVIDER_128  # ///< 128 = 150kHz
PWM_CLOCK_DIVIDER_64 = c_BCM2835_PWM_CLOCK_DIVIDER_64  # ///< 64 = 300kHz
PWM_CLOCK_DIVIDER_32 = c_BCM2835_PWM_CLOCK_DIVIDER_32  # ///< 32 = 600.0kHz
PWM_CLOCK_DIVIDER_16 = c_BCM2835_PWM_CLOCK_DIVIDER_16  # ///< 16 = 1.2MHz
PWM_CLOCK_DIVIDER_8 = c_BCM2835_PWM_CLOCK_DIVIDER_8  # ///< 8 = 2.4MHz
PWM_CLOCK_DIVIDER_4 = c_BCM2835_PWM_CLOCK_DIVIDER_4  # ///< 4 = 4.8MHz
PWM_CLOCK_DIVIDER_2 = c_BCM2835_PWM_CLOCK_DIVIDER_2  # ///< 2 = 9.6MHz, fastest you can get
PWM_CLOCK_DIVIDER_1 = c_BCM2835_PWM_CLOCK_DIVIDER_1  # ///< 1 = 4.6875kHz, same as divider 4096


"""
  \defgroup pwm Pulse Width Modulation
  Allows control of 2 independent PWM channels. A limited subset of GPIO pins
  can be connected to one of these 2 channels, allowing PWM control of GPIO pins.
  You have to set the desired pin into a particular Alt Fun to PWM output. See the PWM
  documentation on the Main Page.
  @{

  Sets the PWM clock divisor,
  to control the basic PWM pulse widths.
  \param[in] divisor Divides the basic 19.2MHz PWM clock. You can use one of the common
  values BCM2835_PWM_CLOCK_DIVIDER_* in \ref bcm2835PWMClockDivider.
  extern void bcm2835_pwm_set_clock(uint32_t divisor);

  Sets the mode of the given PWM channel,
  allowing you to control the PWM mode and enable/disable that channel
  \param[in] channel The PWM channel. 0 or 1.
  \param[in] markspace Set true if you want Mark-Space mode. 0 for Balanced mode.
  \param[in] enabled Set true to enable this channel and produce PWM pulses.
  extern void bcm2835_pwm_set_mode(uint8_t channel, uint8_t markspace, uint8_t enabled);

  Sets the maximum range of the PWM output.
  The data value can vary between 0 and this range to control PWM output
  \param[in] channel The PWM channel. 0 or 1.
  \param[in] range The maximum value permitted for DATA.
  extern void bcm2835_pwm_set_range(uint8_t channel, uint32_t range);

  Sets the PWM pulse ratio to emit to DATA/RANGE,
  where RANGE is set by bcm2835_pwm_set_range().
  \param[in] channel The PWM channel. 0 or 1.
  \param[in] data Controls the PWM output ratio as a fraction of the range.
   Can vary from 0 to RANGE.
  extern void bcm2835_pwm_set_data(uint8_t channel, uint32_t data);

"""