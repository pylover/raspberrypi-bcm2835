# -*- coding: utf-8 -*-
"""
Binary Synchronous Communication (BSC or Bisync) is an IBM character-oriented, half-duplex
link protocol, announced in 1967 after the introduction of System/360.
It replaced the synchronous transmit-receive (STR) protocol used with second generation computers.
The intent was that common link management rules could be used with three different character
encodings for messages. Six-bit Transcode looked backwards to older systems;
USASCII with 128 characters and EBCDIC with 256 characters looked forward.
Transcode disappeared very quickly but the EBCDIC and USASCII dialects of Bisync continued in use.
"""

from _bcm2835 cimport *
__author__ = 'vahid'
__all__ = [
  'BSC_C',
  'BSC_S',
  'BSC_DLEN',
  'BSC_A',
  'BSC_FIFO',
  'BSC_DIV',
  'BSC_DEL',
  'BSC_CLKT',
  'BSC_C_I2CEN',
  'BSC_C_INTR',
  'BSC_C_INTT',
  'BSC_C_INTD',
  'BSC_C_ST',
  'BSC_C_CLEAR_1',
  'BSC_C_CLEAR_2',
  'BSC_C_READ',
  'BSC_S_CLKT',
  'BSC_S_ERR',
  'BSC_S_RXF',
  'BSC_S_TXE',
  'BSC_S_RXD',
  'BSC_S_TXD',
  'BSC_S_RXR',
  'BSC_S_TXW',
  'BSC_S_DONE',
  'BSC_S_TA',

  'BSC_FIFO_SIZE',
]


"""
Defines for I2C
GPIO register offsets from BCM2835_BSC*_BASE.
Offsets into the BSC Peripheral block in bytes per 3.1 BSC Register Map
"""
BSC_C = c_BCM2835_BSC_C  # BSC Master Control
BSC_S = c_BCM2835_BSC_S  # BSC Master Status
BSC_DLEN = c_BCM2835_BSC_DLEN  # BSC Master Data Length
BSC_A = c_BCM2835_BSC_A  # BSC Master Slave Address
BSC_FIFO = c_BCM2835_BSC_FIFO  # BSC Master Data FIFO
BSC_DIV = c_BCM2835_BSC_DIV  # BSC Master Clock Divider
BSC_DEL = c_BCM2835_BSC_DEL  # BSC Master Data Delay
BSC_CLKT = c_BCM2835_BSC_CLKT  # BSC Master Clock Stretch Timeout


"""
Register masks for BSC_C
"""
BSC_C_I2CEN = c_BCM2835_BSC_C_I2CEN  # I2C Enable, 0 = disabled, 1 = enabled
BSC_C_INTR = c_BCM2835_BSC_C_INTR  # Interrupt on RX
BSC_C_INTT = c_BCM2835_BSC_C_INTT  # Interrupt on TX
BSC_C_INTD = c_BCM2835_BSC_C_INTD  # Interrupt on DONE
BSC_C_ST = c_BCM2835_BSC_C_ST  # Start transfer, 1 = Start a new transfer
BSC_C_CLEAR_1 = c_BCM2835_BSC_C_CLEAR_1  # Clear FIFO Clear
BSC_C_CLEAR_2 = c_BCM2835_BSC_C_CLEAR_2  # Clear FIFO Clear
BSC_C_READ = c_BCM2835_BSC_C_READ  # Read transfer


"""
Register masks for BSC_S
"""
BSC_S_CLKT = c_BCM2835_BSC_S_CLKT  # Clock stretch timeout
BSC_S_ERR = c_BCM2835_BSC_S_ERR  # ACK error
BSC_S_RXF = c_BCM2835_BSC_S_RXF  # RXF FIFO full, 0 = FIFO is not full, 1 = FIFO is full
BSC_S_TXE = c_BCM2835_BSC_S_TXE  # TXE FIFO full, 0 = FIFO is not full, 1 = FIFO is full
BSC_S_RXD = c_BCM2835_BSC_S_RXD  # RXD FIFO contains data
BSC_S_TXD = c_BCM2835_BSC_S_TXD  # TXD FIFO can accept data
BSC_S_RXR = c_BCM2835_BSC_S_RXR  # RXR FIFO needs reading (full)
BSC_S_TXW = c_BCM2835_BSC_S_TXW  # TXW FIFO needs writing (full)
BSC_S_DONE = c_BCM2835_BSC_S_DONE  # Transfer DONE
BSC_S_TA = c_BCM2835_BSC_S_TA  # Transfer Active
BSC_FIFO_SIZE = c_BCM2835_BSC_FIFO_SIZE  # BSC FIFO size
