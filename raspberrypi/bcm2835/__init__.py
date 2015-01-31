# -*- coding: utf-8 -*-
from .common import *
from .gpio import *
from .bsc import *
from .i2c import *
from .pad import *
from .pwm import *
from .spi import *
from .st import *
from .exceptions import *
__author__ = 'vahid'
__version__ = '0.2.1-alpha'


class Context(object):

  def __init__(self, simulate=False):
    self.simulate = simulate

  def __enter__(self):
    if self.simulate:
      set_debug(1)
    res = init()
    if not res:
      raise BCM2835InitializeException()

  def __exit__(self, exc_type, exc_val, exc_tb):
    res = close()
    if not res:
      raise BCM2835DisposeException()
    if self.simulate:
      set_debug(0)


class SimulationContext(Context):
  def __init__(self):
    super(SimulationContext, self).__init__(simulate=True)




