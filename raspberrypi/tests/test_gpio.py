# -*- coding: utf-8 -*-
import unittest
from raspberrypi import gpio, bcm2835
__author__ = 'vahid'


class TestGPIO(unittest.TestCase):

  def TestGeneralOperations(self):

    with bcm2835.SimulationContext() as ctx:

      self.assertTrue(ctx.simulate)

      reset_pin = gpio.Pin.by_rpi_board_number(7)
      self.assertEqual(reset_pin.number, bcm2835.RPI_B_PLUS_GPIO_J8_07)
      reset_pin.setup_as_output(pull='up')

      on_off_pin = gpio.Pin(5)
      self.assertEqual(on_off_pin.number, bcm2835.RPI_B_PLUS_GPIO_J8_29)
      on_off_pin.pull_up()
      on_off_pin.setup_as_output()
