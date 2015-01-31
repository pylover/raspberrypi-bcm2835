# -*- coding: utf-8 -*-
__author__ = 'vahid'

class BCM2835Exception(Exception):
  pass

class BCM2835InitializeException(BCM2835Exception):
  pass


class BCM2835DisposeException(BCM2835Exception):
  pass
