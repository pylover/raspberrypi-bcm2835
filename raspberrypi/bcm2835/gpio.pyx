# -*- coding: utf-8 -*-
from _bcm2835 cimport *
__author__ = 'vahid'
__all__ = [
  'GPFSEL0',
  'GPFSEL1',
  'GPFSEL2',
  'GPFSEL3',
  'GPFSEL4',
  'GPFSEL5',
  'GPSET0',
  'GPSET1',
  'GPCLR0',
  'GPCLR1',
  'GPLEV0',
  'GPLEV1',
  'GPEDS0',
  'GPEDS1',
  'GPREN0',
  'GPREN1',
  'GPFEN0',
  'GPFEN1',
  'GPHEN0',
  'GPHEN1',
  'GPLEN0',
  'GPLEN1',
  'GPAREN0',
  'GPAREN1',
  'GPAFEN0',
  'GPAFEN1',
  'GPPUD',
  'GPPUDCLK0',
  'GPPUDCLK1',

  'GPIO_FSEL_INPT',
  'GPIO_FSEL_OUTP',
  'GPIO_FSEL_ALT0',
  'GPIO_FSEL_ALT1',
  'GPIO_FSEL_ALT2',
  'GPIO_FSEL_ALT3',
  'GPIO_FSEL_ALT4',
  'GPIO_FSEL_ALT5',
  'GPIO_FSEL_MASK',

  'GPIO_PUD_OFF',
  'GPIO_PUD_DOWN',
  'GPIO_PUD_UP',

  'RPI_GPIO_P1_03',
  'RPI_GPIO_P1_05',
  'RPI_GPIO_P1_07',
  'RPI_GPIO_P1_08',
  'RPI_GPIO_P1_10',
  'RPI_GPIO_P1_11',
  'RPI_GPIO_P1_12',
  'RPI_GPIO_P1_13',
  'RPI_GPIO_P1_15',
  'RPI_GPIO_P1_16',
  'RPI_GPIO_P1_18',
  'RPI_GPIO_P1_19',
  'RPI_GPIO_P1_21',
  'RPI_GPIO_P1_22',
  'RPI_GPIO_P1_23',
  'RPI_GPIO_P1_24',
  'RPI_GPIO_P1_26',

  'RPI_V2_GPIO_P1_03',
  'RPI_V2_GPIO_P1_05',
  'RPI_V2_GPIO_P1_07',
  'RPI_V2_GPIO_P1_08',
  'RPI_V2_GPIO_P1_10',
  'RPI_V2_GPIO_P1_11',
  'RPI_V2_GPIO_P1_12',
  'RPI_V2_GPIO_P1_13',
  'RPI_V2_GPIO_P1_15',
  'RPI_V2_GPIO_P1_16',
  'RPI_V2_GPIO_P1_18',
  'RPI_V2_GPIO_P1_19',
  'RPI_V2_GPIO_P1_21',
  'RPI_V2_GPIO_P1_22',
  'RPI_V2_GPIO_P1_23',
  'RPI_V2_GPIO_P1_24',
  'RPI_V2_GPIO_P1_26',

  'RPI_V2_GPIO_P5_03',
  'RPI_V2_GPIO_P5_04',
  'RPI_V2_GPIO_P5_05',
  'RPI_V2_GPIO_P5_06',

  'RPI_B_PLUS_GPIO_J8_03',
  'RPI_B_PLUS_GPIO_J8_05',
  'RPI_B_PLUS_GPIO_J8_07',
  'RPI_B_PLUS_GPIO_J8_08',
  'RPI_B_PLUS_GPIO_J8_10',
  'RPI_B_PLUS_GPIO_J8_11',
  'RPI_B_PLUS_GPIO_J8_12',
  'RPI_B_PLUS_GPIO_J8_13',
  'RPI_B_PLUS_GPIO_J8_15',
  'RPI_B_PLUS_GPIO_J8_16',
  'RPI_B_PLUS_GPIO_J8_18',
  'RPI_B_PLUS_GPIO_J8_19',
  'RPI_B_PLUS_GPIO_J8_21',
  'RPI_B_PLUS_GPIO_J8_22',
  'RPI_B_PLUS_GPIO_J8_23',
  'RPI_B_PLUS_GPIO_J8_24',
  'RPI_B_PLUS_GPIO_J8_26',
  'RPI_B_PLUS_GPIO_J8_29',
  'RPI_B_PLUS_GPIO_J8_31',
  'RPI_B_PLUS_GPIO_J8_32',
  'RPI_B_PLUS_GPIO_J8_33',
  'RPI_B_PLUS_GPIO_J8_35',
  'RPI_B_PLUS_GPIO_J8_36',
  'RPI_B_PLUS_GPIO_J8_37',
  'RPI_B_PLUS_GPIO_J8_38',
  'RPI_B_PLUS_GPIO_J8_40',

  # Functions
  'gpio_fsel',
  'gpio_set',
  'gpio_clr',
  'gpio_set_multi',
  'gpio_clr_multi',
  'gpio_lev',
  'gpio_eds',
  'gpio_set_eds',
  'gpio_ren',
  'gpio_clr_ren',
  'gpio_fen',
  'gpio_clr_fen',
  'gpio_hen',
  'gpio_clr_hen',
  'gpio_len',
  'gpio_clr_len',
  'gpio_aren',
  'gpio_clr_aren',
  'gpio_afen',
  'gpio_clr_afen',
  'get_gpio_base_address'

]


"""
Defines for GPIO
The BCM2835 has 54 GPIO pins.
  BCM2835 data sheet, Page 90 onwards.
  GPIO register offsets from BCM2835_GPIO_BASE. Offsets into the GPIO Peripheral block in bytes per 6.1 Register View
"""
GPFSEL0 = c_BCM2835_GPFSEL0       # GPIO Function Select 0
GPFSEL1 = c_BCM2835_GPFSEL1       # GPIO Function Select 1
GPFSEL2 = c_BCM2835_GPFSEL2       # GPIO Function Select 2
GPFSEL3 = c_BCM2835_GPFSEL3       # GPIO Function Select 3
GPFSEL4 = c_BCM2835_GPFSEL4       # GPIO Function Select 4
GPFSEL5 = c_BCM2835_GPFSEL5       # GPIO Function Select 5
GPSET0 = c_BCM2835_GPSET0         # GPIO Pin Output Set 0
GPSET1 = c_BCM2835_GPSET1         # GPIO Pin Output Set 1
GPCLR0 = c_BCM2835_GPCLR0         # GPIO Pin Output Clear 0
GPCLR1 = c_BCM2835_GPCLR1         # GPIO Pin Output Clear 1
GPLEV0 = c_BCM2835_GPLEV0         # GPIO Pin Level 0
GPLEV1 = c_BCM2835_GPLEV1         # GPIO Pin Level 1
GPEDS0 = c_BCM2835_GPEDS0         # GPIO Pin Event Detect Status 0
GPEDS1 = c_BCM2835_GPEDS1         # GPIO Pin Event Detect Status 1
GPREN0 = c_BCM2835_GPREN0         # GPIO Pin Rising Edge Detect Enable 0
GPREN1 = c_BCM2835_GPREN1         # GPIO Pin Rising Edge Detect Enable 1
GPFEN0 = c_BCM2835_GPFEN0         # GPIO Pin Falling Edge Detect Enable 0
GPFEN1 = c_BCM2835_GPFEN1         # GPIO Pin Falling Edge Detect Enable 1
GPHEN0 = c_BCM2835_GPHEN0         # GPIO Pin High Detect Enable 0
GPHEN1 = c_BCM2835_GPHEN1         # GPIO Pin High Detect Enable 1
GPLEN0 = c_BCM2835_GPLEN0         # GPIO Pin Low Detect Enable 0
GPLEN1 = c_BCM2835_GPLEN1         # GPIO Pin Low Detect Enable 1
GPAREN0 = c_BCM2835_GPAREN0       # GPIO Pin Async. Rising Edge Detect 0
GPAREN1 = c_BCM2835_GPAREN1       # GPIO Pin Async. Rising Edge Detect 1
GPAFEN0 = c_BCM2835_GPAFEN0       # GPIO Pin Async. Falling Edge Detect 0
GPAFEN1 = c_BCM2835_GPAFEN1       # GPIO Pin Async. Falling Edge Detect 1
GPPUD = c_BCM2835_GPPUD           # GPIO Pin Pull-up/down Enable
GPPUDCLK0 = c_BCM2835_GPPUDCLK0   # GPIO Pin Pull-up/down Enable Clock 0
GPPUDCLK1 = c_BCM2835_GPPUDCLK1   # GPIO Pin Pull-up/down Enable Clock 1


"""
Port function select modes for bcm2835_gpio_fsel()
"""
GPIO_FSEL_INPT = c_BCM2835_GPIO_FSEL_INPT  # Input
GPIO_FSEL_OUTP = c_BCM2835_GPIO_FSEL_OUTP  # Output
GPIO_FSEL_ALT0 = c_BCM2835_GPIO_FSEL_ALT0  # Alternate function 0
GPIO_FSEL_ALT1 = c_BCM2835_GPIO_FSEL_ALT1  # Alternate function 1
GPIO_FSEL_ALT2 = c_BCM2835_GPIO_FSEL_ALT2  # Alternate function 2
GPIO_FSEL_ALT3 = c_BCM2835_GPIO_FSEL_ALT3  # Alternate function 3
GPIO_FSEL_ALT4 = c_BCM2835_GPIO_FSEL_ALT4  # Alternate function 4
GPIO_FSEL_ALT5 = c_BCM2835_GPIO_FSEL_ALT5  # Alternate function 5
GPIO_FSEL_MASK = c_BCM2835_GPIO_FSEL_MASK  # Function select bits mask


"""
Pullup/Pulldown defines for bcm2835_gpio_pud()
"""
GPIO_PUD_OFF = c_BCM2835_GPIO_PUD_OFF  # Off ? disable pull-up/down
GPIO_PUD_DOWN = c_BCM2835_GPIO_PUD_DOWN  # Enable Pull Down control
GPIO_PUD_UP = c_BCM2835_GPIO_PUD_UP  # Enable Pull Up control


"""
Here we define Raspberry Pin GPIO pins on P1 in terms of the underlying BCM GPIO pin numbers.
These can be passed as a pin number to any function requiring a pin.
Not all pins on the RPi 26 bin IDE plug are connected to GPIO pins
and some can adopt an alternate function.
RPi version 2 has some slightly different pinouts, and these are values RPI_V2_*.
At bootup, pins 8 and 10 are set to UART0_TXD, UART0_RXD (ie the alt0 function) respectively
When SPI0 is in use (ie after bcm2835_spi_begin()), pins 19, 21, 23, 24, 26 are dedicated to SPI
and cant be controlled independently
"""
# RPI Version 1
RPI_GPIO_P1_03 = c_RPI_GPIO_P1_03  # Version 1, Pin P1-03
RPI_GPIO_P1_05 = c_RPI_GPIO_P1_05  # Version 1, Pin P1-05
RPI_GPIO_P1_07 = c_RPI_GPIO_P1_07  # Version 1, Pin P1-07
RPI_GPIO_P1_08 = c_RPI_GPIO_P1_08  # Version 1, Pin P1-08, defaults to alt function 0 UART0_TXD
RPI_GPIO_P1_10 = c_RPI_GPIO_P1_10  # Version 1, Pin P1-10, defaults to alt function 0 UART0_RXD
RPI_GPIO_P1_11 = c_RPI_GPIO_P1_11  # Version 1, Pin P1-11
RPI_GPIO_P1_12 = c_RPI_GPIO_P1_12  # Version 1, Pin P1-12, can be PWM channel 0 in ALT FUN 5
RPI_GPIO_P1_13 = c_RPI_GPIO_P1_13  # Version 1, Pin P1-13
RPI_GPIO_P1_15 = c_RPI_GPIO_P1_15  # Version 1, Pin P1-15
RPI_GPIO_P1_16 = c_RPI_GPIO_P1_16  # Version 1, Pin P1-16
RPI_GPIO_P1_18 = c_RPI_GPIO_P1_18  # Version 1, Pin P1-18
RPI_GPIO_P1_19 = c_RPI_GPIO_P1_19  # Version 1, Pin P1-19, MOSI when SPI0 in use
RPI_GPIO_P1_21 = c_RPI_GPIO_P1_21  # Version 1, Pin P1-21, MISO when SPI0 in use
RPI_GPIO_P1_22 = c_RPI_GPIO_P1_22  # Version 1, Pin P1-22
RPI_GPIO_P1_23 = c_RPI_GPIO_P1_23  # Version 1, Pin P1-23, CLK when SPI0 in use
RPI_GPIO_P1_24 = c_RPI_GPIO_P1_24  # Version 1, Pin P1-24, CE0 when SPI0 in use
RPI_GPIO_P1_26 = c_RPI_GPIO_P1_26  # Version 1, Pin P1-26, CE1 when SPI0 in use

# RPI Version 2
RPI_V2_GPIO_P1_03 = c_RPI_V2_GPIO_P1_03  # Version 2, Pin P1-03
RPI_V2_GPIO_P1_05 = c_RPI_V2_GPIO_P1_05  # Version 2, Pin P1-05
RPI_V2_GPIO_P1_07 = c_RPI_V2_GPIO_P1_07  # Version 2, Pin P1-07
RPI_V2_GPIO_P1_08 = c_RPI_V2_GPIO_P1_08  # Version 2, Pin P1-08, defaults to alt function 0 UART0_TXD
RPI_V2_GPIO_P1_10 = c_RPI_V2_GPIO_P1_10  # Version 2, Pin P1-10, defaults to alt function 0 UART0_RXD
RPI_V2_GPIO_P1_11 = c_RPI_V2_GPIO_P1_11  # Version 2, Pin P1-11
RPI_V2_GPIO_P1_12 = c_RPI_V2_GPIO_P1_12  # Version 2, Pin P1-12, can be PWM channel 0 in ALT FUN 5
RPI_V2_GPIO_P1_13 = c_RPI_V2_GPIO_P1_13  # Version 2, Pin P1-13
RPI_V2_GPIO_P1_15 = c_RPI_V2_GPIO_P1_15  # Version 2, Pin P1-15
RPI_V2_GPIO_P1_16 = c_RPI_V2_GPIO_P1_16  # Version 2, Pin P1-16
RPI_V2_GPIO_P1_18 = c_RPI_V2_GPIO_P1_18  # Version 2, Pin P1-18
RPI_V2_GPIO_P1_19 = c_RPI_V2_GPIO_P1_19  # Version 2, Pin P1-19, MOSI when SPI0 in use
RPI_V2_GPIO_P1_21 = c_RPI_V2_GPIO_P1_21  # Version 2, Pin P1-21, MISO when SPI0 in use
RPI_V2_GPIO_P1_22 = c_RPI_V2_GPIO_P1_22  # Version 2, Pin P1-22
RPI_V2_GPIO_P1_23 = c_RPI_V2_GPIO_P1_23  # Version 2, Pin P1-23, CLK when SPI0 in use
RPI_V2_GPIO_P1_24 = c_RPI_V2_GPIO_P1_24  # Version 2, Pin P1-24, CE0 when SPI0 in use
RPI_V2_GPIO_P1_26 = c_RPI_V2_GPIO_P1_26  # Version 2, Pin P1-26, CE1 when SPI0 in use
RPI_V2_GPIO_P5_03 = c_RPI_V2_GPIO_P5_03  # Version 2, Pin P5-03
RPI_V2_GPIO_P5_04 = c_RPI_V2_GPIO_P5_04  # Version 2, Pin P5-04
RPI_V2_GPIO_P5_05 = c_RPI_V2_GPIO_P5_05  # Version 2, Pin P5-05
RPI_V2_GPIO_P5_06 = c_RPI_V2_GPIO_P5_06  # Version 2, Pin P5-06

#RPI B+
RPI_B_PLUS_GPIO_J8_03 = c_RPI_B_PLUS_GPIO_J8_03  # B+, Pin J8-03
RPI_B_PLUS_GPIO_J8_05 = c_RPI_B_PLUS_GPIO_J8_05  # B+, Pin J8-05
RPI_B_PLUS_GPIO_J8_07 = c_RPI_B_PLUS_GPIO_J8_07  # B+, Pin J8-07
RPI_B_PLUS_GPIO_J8_08 = c_RPI_B_PLUS_GPIO_J8_08  # B+, Pin J8-08, defaults to alt function 0 UART0_TXD
RPI_B_PLUS_GPIO_J8_10 = c_RPI_B_PLUS_GPIO_J8_10  # B+, Pin J8-10, defaults to alt function 0 UART0_RXD
RPI_B_PLUS_GPIO_J8_11 = c_RPI_B_PLUS_GPIO_J8_11  # B+, Pin J8-11
RPI_B_PLUS_GPIO_J8_12 = c_RPI_B_PLUS_GPIO_J8_12  # B+, Pin J8-12, can be PWM channel 0 in ALT FUN 5
RPI_B_PLUS_GPIO_J8_13 = c_RPI_B_PLUS_GPIO_J8_13  # B+, Pin J8-13
RPI_B_PLUS_GPIO_J8_15 = c_RPI_B_PLUS_GPIO_J8_15  # B+, Pin J8-15
RPI_B_PLUS_GPIO_J8_16 = c_RPI_B_PLUS_GPIO_J8_16  # B+, Pin J8-16
RPI_B_PLUS_GPIO_J8_18 = c_RPI_B_PLUS_GPIO_J8_18  # B+, Pin J8-18
RPI_B_PLUS_GPIO_J8_19 = c_RPI_B_PLUS_GPIO_J8_19  # B+, Pin J8-19, MOSI when SPI0 in use
RPI_B_PLUS_GPIO_J8_21 = c_RPI_B_PLUS_GPIO_J8_21  # B+, Pin J8-21, MISO when SPI0 in use
RPI_B_PLUS_GPIO_J8_22 = c_RPI_B_PLUS_GPIO_J8_22  # B+, Pin J8-22
RPI_B_PLUS_GPIO_J8_23 = c_RPI_B_PLUS_GPIO_J8_23  # B+, Pin J8-23, CLK when SPI0 in use
RPI_B_PLUS_GPIO_J8_24 = c_RPI_B_PLUS_GPIO_J8_24  # B+, Pin J8-24, CE0 when SPI0 in use
RPI_B_PLUS_GPIO_J8_26 = c_RPI_B_PLUS_GPIO_J8_26  # B+, Pin J8-26, CE1 when SPI0 in use
RPI_B_PLUS_GPIO_J8_29 = c_RPI_B_PLUS_GPIO_J8_29  # B+, Pin J8-29
RPI_B_PLUS_GPIO_J8_31 = c_RPI_B_PLUS_GPIO_J8_31  # B+, Pin J8-31
RPI_B_PLUS_GPIO_J8_32 = c_RPI_B_PLUS_GPIO_J8_32  # B+, Pin J8-32
RPI_B_PLUS_GPIO_J8_33 = c_RPI_B_PLUS_GPIO_J8_33  # B+, Pin J8-33
RPI_B_PLUS_GPIO_J8_35 = c_RPI_B_PLUS_GPIO_J8_35  # B+, Pin J8-35
RPI_B_PLUS_GPIO_J8_36 = c_RPI_B_PLUS_GPIO_J8_36  # B+, Pin J8-36
RPI_B_PLUS_GPIO_J8_37 = c_RPI_B_PLUS_GPIO_J8_37  # B+, Pin J8-37
RPI_B_PLUS_GPIO_J8_38 = c_RPI_B_PLUS_GPIO_J8_38  # B+, Pin J8-38
RPI_B_PLUS_GPIO_J8_40 = c_RPI_B_PLUS_GPIO_J8_40  # B+, Pin J8-40


def get_gpio_base_address():
  """
  Returns the GPIO base mapped address. Available after init() function called.
  :return: int, The base mapped address of the GPIO peripheral
  """
  return c_bcm2835_gpio


def gpio_fsel(pin, mode):
  """
  These functions allow you to control the GPIO interface. You can set the
  function of each GPIO pin, read the input state and set the output state.

  Sets the Function Select register for the given pin, which configures
  the pin as Input, Output or one of the 6 alternate functions.

  :param pin: GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  :param mode: Mode to set the pin to, one of BCM2835_GPIO_FSEL_* from \ref bcm2835FunctionSelect
  :return:
  """
  c_bcm2835_gpio_fsel(pin, mode)


def gpio_set(pin):
  """
  Sets the specified pin output to HIGH.

  :param pin: GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  """
  c_bcm2835_gpio_set(pin)


def gpio_clr(pin):
  """
  Sets the specified pin output to LOW.

  :param pin: GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  :return:
  """
  c_bcm2835_gpio_clr(pin)


def gpio_set_multi(mask):
  """
  Sets any of the first 32 GPIO output pins specified in the mask to HIGH.

  :param mask: Mask of pins to affect. Use eg: (1 << RPI_GPIO_P1_03) | (1 << RPI_GPIO_P1_05)
  """
  c_bcm2835_gpio_set_multi(mask)


def gpio_clr_multi(mask):
  """
  Sets any of the first 32 GPIO output pins specified in the mask to LOW.

  :param mask: Mask of pins to affect. Use eg: (1 << RPI_GPIO_P1_03) | (1 << RPI_GPIO_P1_05)
  """
  c_bcm2835_gpio_clr_multi(mask)


def gpio_lev(pin):
  """
  Reads the current level on the specified pin and returns either HIGH or LOW. Works whether or not the pin is an input or an output.

  :param pin: GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  :return: the current level, either HIGH or LOW
  """
  return c_bcm2835_gpio_lev(pin)


def gpio_eds(pin):
  """
  Event Detect Status.
  Tests whether the specified pin has detected a level or edge as requested by
  bcm2835_gpio_ren()
  bcm2835_gpio_fen()
  bcm2835_gpio_hen()
  bcm2835_gpio_len()
  bcm2835_gpio_aren()
  bcm2835_gpio_afen()

  Clear the flag for a given pin by calling bcm2835_gpio_set_eds(pin);

  :param pin: GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  :return: HIGH if the event detect status for the given pin is true.
  """
  return c_bcm2835_gpio_eds(pin)


def gpio_set_eds(pin):
  """
  Sets the Event Detect Status register for a given pin to 1, which has the effect of clearing the flag. Use this after seeing an Event Detect Status on the pin.

  :param pin: GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  """
  c_bcm2835_gpio_set_eds(pin)


def gpio_ren(pin):
  """
  Enable Rising Edge Detect Enable for the specified pin.
  When a rising edge is detected, sets the appropriate pin in Event Detect Status.
  The GPRENn registers use
  synchronous edge detection. This means the input signal is sampled using the
  system clock and then it is looking for a ?011? pattern on the sampled signal. This
  has the effect of suppressing glitches.

  :param pin: GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  """
  c_bcm2835_gpio_ren(pin)


def gpio_clr_ren(pin):
  """
  Disable Rising Edge Detect Enable for the specified pin.

  :param pin: GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  """
  c_bcm2835_gpio_clr_ren(pin)


def gpio_fen(pin):
  """
  Enable Falling Edge Detect Enable for the specified pin.
  When a falling edge is detected, sets the appropriate pin in Event Detect Status.
  The GPRENn registers use
  synchronous edge detection. This means the input signal is sampled using the
  system clock and then it is looking for a ?100? pattern on the sampled signal. This
  has the effect of suppressing glitches.

  :param pin: GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  """
  c_bcm2835_gpio_fen(pin)


def gpio_clr_fen(pin):
  """
  Disable Falling Edge Detect Enable for the specified pin.

  :param pin: GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  """
  c_bcm2835_gpio_clr_fen(pin)


def gpio_hen(pin):
  """
  Enable High Detect Enable for the specified pin.
  When a HIGH level is detected on the pin, sets the appropriate pin in Event Detect Status.

  :param pin: GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  """
  c_bcm2835_gpio_hen(pin)


def gpio_clr_hen(pin):
  """
  Disable High Detect Enable for the specified pin.

  :param pin: GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  """
  c_bcm2835_gpio_clr_hen(pin)


def gpio_len(pin):
  """
  Enable Low Detect Enable for the specified pin.
  When a LOW level is detected on the pin, sets the appropriate pin in Event Detect Status.

  :param pin: GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  """
  c_bcm2835_gpio_len(pin)


def gpio_clr_len(pin):
  """
  Disable Low Detect Enable for the specified pin.

  :param pin: GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  """
  c_bcm2835_gpio_clr_len(pin)


def gpio_aren(pin):
  """
  Enable Asynchronous Rising Edge Detect Enable for the specified pin.
  When a rising edge is detected, sets the appropriate pin in Event Detect Status.
  Asynchronous means the incoming signal is not sampled by the system clock. As such
  rising edges of very short duration can be detected.

  :param pin: GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  """
  c_bcm2835_gpio_aren(pin)


def gpio_clr_aren(pin):
  """
  Disable Asynchronous Rising Edge Detect Enable for the specified pin.
  :param pin: GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  """
  c_bcm2835_gpio_clr_aren(pin)


def gpio_afen(pin):
  """
  Enable Asynchronous Falling Edge Detect Enable for the specified pin.
  When a falling edge is detected, sets the appropriate pin in Event Detect Status.
  Asynchronous means the incoming signal is not sampled by the system clock. As such
  falling edges of very short duration can be detected.

  :param pin: GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  """
  c_bcm2835_gpio_afen(pin)

def gpio_clr_afen(pin):
  """
  Disable Asynchronous Falling Edge Detect Enable for the specified pin.

  :param pin: GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  """
  c_bcm2835_gpio_clr_afen(pin)

def gpio_pud(pud):
  """
  Sets the Pull-up/down register for the given pin. This is
  used with bcm2835_gpio_pudclk() to set the  Pull-up/down resistor for the given pin.
  However, it is usually more convenient to use bcm2835_gpio_set_pud().

  :param pud: The desired Pull-up/down mode. One of BCM2835_GPIO_PUD_* from bcm2835PUDControl
  """
  c_bcm2835_gpio_pud(pud)


"""
    Clocks the Pull-up/down value set earlier by bcm2835_gpio_pud() into the pin.
    \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
    \param[in] on HIGH to clock the value from bcm2835_gpio_pud() into the pin.
    LOW to remove the clock.
    \sa bcm2835_gpio_set_pud()
    extern void bcm2835_gpio_pudclk(uint8_t pin, uint8_t on);


    Sets the output state of the specified pin
    \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
    \param[in] on HIGH sets the output to HIGH and LOW to LOW.
    extern void bcm2835_gpio_write(uint8_t pin, uint8_t on);

    Sets any of the first 32 GPIO output pins specified in the mask to the state given by on
    \param[in] mask Mask of pins to affect. Use eg: (1 << RPI_GPIO_P1_03) | (1 << RPI_GPIO_P1_05)
    \param[in] on HIGH sets the output to HIGH and LOW to LOW.
    extern void bcm2835_gpio_write_multi(uint32_t mask, uint8_t on);

    Sets the first 32 GPIO output pins specified in the mask to the value given by value
    \param[in] value values required for each bit masked in by mask, eg: (1 << RPI_GPIO_P1_03) | (1 << RPI_GPIO_P1_05)
    \param[in] mask Mask of pins to affect. Use eg: (1 << RPI_GPIO_P1_03) | (1 << RPI_GPIO_P1_05)
    extern void bcm2835_gpio_write_mask(uint32_t value, uint32_t mask);

    Sets the Pull-up/down mode for the specified pin. This is more convenient than
    clocking the mode in with bcm2835_gpio_pud() and bcm2835_gpio_pudclk().
    \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
    \param[in] pud The desired Pull-up/down mode. One of BCM2835_GPIO_PUD_* from bcm2835PUDControl
    extern void bcm2835_gpio_set_pud(uint8_t pin, uint8_t pud);


"""