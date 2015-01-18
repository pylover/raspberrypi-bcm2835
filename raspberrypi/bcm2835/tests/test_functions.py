# -*- coding: utf-8 -*-
__author__ = 'vahid'

import unittest

from raspberrypi.bcm2835 import *


class TestBCM2835Functions(unittest.TestCase):

  def setUp(self):
    set_debug(1)
    assert init() == 1
  
  def tearDown(self):
    close()


  def test_common(self):
    """
    Testing these functions:
      peri_read
      peri_read_nb
      peri_write
      peri_write_nb
      peri_set_bits
    """

    addr = GPIO_BASE+get_gpio_base_address()
    self.assertEqual(peri_read(addr), 0)
    self.assertEqual(peri_read_nb(addr), 0)
    self.assertIsNone(peri_write(addr, 10))
    self.assertIsNone(peri_write_nb(addr, 10))
    self.assertIsNone(peri_set_bits(addr, 10, 10))



