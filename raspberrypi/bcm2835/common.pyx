# -*- coding: utf-8 -*-
from _bcm2835 cimport *
__author__ = 'vahid'

__all__ = [
  # Constants
  'HIGH',
  'LOW',
  'CORE_CLK_HZ',
  'PERI_BASE',
  'ST_BASE',
  'CLOCK_BASE',
  'SPI0_BASE',
  'BSC0_BASE',
  'BSC1_BASE',
  'PAGE_SIZE',
  'BLOCK_SIZE',
  'GPIO_PADS',
  'GPIO_BASE',
  'GPIO_PWM',

  # Functions
  'init',
  'close',
  'set_debug',
]

"""
Common constants
"""
HIGH = c_HIGH  # This means pin HIGH, true, 3.3volts on a pin.
LOW = c_LOW  # This means pin LOW, false, 0volts on a pin.
CORE_CLK_HZ = c_BCM2835_CORE_CLK_HZ  # Speed of the core clock core_clk
PERI_BASE = c_BCM2835_PERI_BASE  # Physical addresses for various peripheral register sets Base Physical Address of the BCM 2835 peripheral registers
ST_BASE = c_BCM2835_ST_BASE  # Base Physical Address of the System Timer registers
CLOCK_BASE = c_BCM2835_CLOCK_BASE  # Base Physical Address of the Clock/timer registers
SPI0_BASE = c_BCM2835_SPI0_BASE  # Base Physical Address of the SPI0 registers
BSC0_BASE = c_BCM2835_BSC0_BASE  # Base Physical Address of the BSC0 registers
BSC1_BASE = c_BCM2835_BSC1_BASE  # Base Physical Address of the BSC1 registers
PAGE_SIZE = c_BCM2835_PAGE_SIZE  # Size of memory page on RPi
BLOCK_SIZE = c_BCM2835_BLOCK_SIZE  # Size of memory block on RPi
GPIO_BASE = c_BCM2835_GPIO_BASE  # Base Physical Address of the GPIO registers
GPIO_PADS = c_BCM2835_GPIO_PADS  # Base Physical Address of the Pads registers
GPIO_PWM = c_BCM2835_GPIO_PWM  # Base Physical Address of the PWM registers


def init():
  """
  Library initialisation and management
  These functions allow you to initialize and control the bcm2835 library

  Initialise the library by opening /dev/mem and getting pointers to the
  internal memory for BCM 2835 device registers. You must call this (successfully)
  before calling any other
  functions in this library (except bcm2835_set_debug).
  If bcm2835_init() fails by returning 0,
  calling any other function may result in crashes or other failures.
  Prints messages to stderr in case of errors.
  :return: 1 if successful else 0
  """
  return c_bcm2835_init()


def close():
  """
  Close the library, deallocating any allocated memory and closing /dev/mem
  :return: 1 if successful else 0
  """
  return c_bcm2835_close()


def set_debug(debug):
  """
  Sets the debug level of the library.
  A value of 1 prevents mapping to /dev/mem, and makes the library print out
  what it would do, rather than accessing the GPIO registers.
  A value of 0, the default, causes normal operation.
  Call this before calling bcm2835_init();
  :param debug: The new debug level. 1 means debug
  """
  c_bcm2835_set_debug(debug)

