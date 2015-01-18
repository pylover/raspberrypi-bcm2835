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

  'peri_read',
  'peri_read_nb',
  'peri_write',
  'peri_write_nb',
  'peri_set_bits',
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


def peri_read(paddr):
  """
  These functions provide low level register access, and should not generally
  need to be used

  Reads 32 bit value from a peripheral address
  The read is done twice, and is therefore always safe in terms of
  manual section 1.3 Peripheral access precautions for correct memory ordering
  :param paddr: Physical address to read from. See BCM2835_GPIO_BASE etc.
  :return: the value read from the 32 bit register
  """

  return c_bcm2835_peri_read(<uint32_t*> <uint32_t> paddr)


def peri_read_nb(paddr):
  """
  Reads 32 bit value from a peripheral address without the read barrier
  You should only use this when your code has previously called bcm2835_peri_read()
  within the same peripheral, and no other peripheral access has occurred since.
  :param paddr: Physical address to read from. See BCM2835_GPIO_BASE etc.
  :return: the value read from the 32 bit register
  """
  return c_bcm2835_peri_read_nb(<uint32_t*> <uint32_t> paddr)


def peri_write(paddr, value):
  """
  Writes 32 bit value from a peripheral address
  The write is done twice, and is therefore always safe in terms of
  manual section 1.3 Peripheral access precautions for correct memory ordering

  :param paddr: Physical address to read from. See GPIO_BASE etc.
  :param value: The 32 bit value to write
  """
  c_bcm2835_peri_write(<uint32_t*> <uint32_t> paddr, value)


def peri_write_nb(paddr, value):
  """
  Writes 32 bit value from a peripheral address without the write barrier
  You should only use this when your code has previously called bcm2835_peri_write()
  within the same peripheral, and no other peripheral access has occurred since.

  :param paddr: Physical address to read from. See GPIO_BASE etc.
  :param value: The 32 bit value to write
  """
  c_bcm2835_peri_write_nb(<uint32_t*> <uint32_t> paddr, value)


def peri_set_bits(paddr, value, mask):
  """
  Alters a number of bits in a 32 peripheral regsiter.
  It reads the current valu and then alters the bits deines as 1 in mask,
  according to the bit value in value.
  All other bits that are 0 in the mask are unaffected.
  Use this to alter a subset of the bits in a register.
  The write is done twice, and is therefore always safe in terms of
  manual section 1.3 Peripheral access precautions for correct memory ordering

  :param paddr: Physical address to read from. See GPIO_BASE etc.
  :param value: The 32 bit value to write, masked in by mask.
  :param mask: Bitmask that defines the bits that will be altered in the register.
  :return:
  """
  c_bcm2835_peri_set_bits(<uint32_t*> <uint32_t> paddr, value, mask)