# -*- coding: utf-8 -*-
from _bcm2835 cimport *
__author__ = 'vahid'
__all__ = [
  'peri_read',
  'peri_read_nb',
  'peri_write',
  'peri_write_nb',
  'peri_set_bits',

]

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

  return c_bcm2835_peri_read(<uintptr_t> paddr)


def peri_read_nb(paddr):
  """
  Reads 32 bit value from a peripheral address without the read barrier
  You should only use this when your code has previously called bcm2835_peri_read()
  within the same peripheral, and no other peripheral access has occurred since.
  :param paddr: Physical address to read from. See BCM2835_GPIO_BASE etc.
  :return: the value read from the 32 bit register
  """
  return c_bcm2835_peri_read_nb(<uintptr_t> paddr)


def peri_write(paddr, value):
  """
  Writes 32 bit value from a peripheral address
  The write is done twice, and is therefore always safe in terms of
  manual section 1.3 Peripheral access precautions for correct memory ordering

  :param paddr: Physical address to read from. See BCM2835_GPIO_BASE etc.
  :param value: The 32 bit value to write
  """
  c_bcm2835_peri_write(<uintptr_t> paddr, value)


def peri_write_nb(paddr, value):
  """
  Writes 32 bit value from a peripheral address without the write barrier
  You should only use this when your code has previously called bcm2835_peri_write()
  within the same peripheral, and no other peripheral access has occurred since.

  :param paddr: Physical address to read from. See BCM2835_GPIO_BASE etc.
  :param value: The 32 bit value to write
  """
  c_bcm2835_peri_write_nb(<uintptr_t> paddr, value)


def peri_set_bits(paddr, value, mask):
  """
  Alters a number of bits in a 32 peripheral regsiter.
  It reads the current valu and then alters the bits deines as 1 in mask,
  according to the bit value in value.
  All other bits that are 0 in the mask are unaffected.
  Use this to alter a subset of the bits in a register.
  The write is done twice, and is therefore always safe in terms of
  manual section 1.3 Peripheral access precautions for correct memory ordering

  :param paddr: Physical address to read from. See BCM2835_GPIO_BASE etc.
  :param value: The 32 bit value to write, masked in by mask.
  :param mask: Bitmask that defines the bits that will be altered in the register.
  :return:
  """
  c_bcm2835_peri_set_bits(<uintptr_t> paddr, value, mask)