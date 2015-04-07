# -*- coding: utf-8 -*-
"""
These functions let you use I2C (The Broadcom Serial Control bus with the Philips I2C bus/interface version 2.1 January 2000.) to interface with an external I2C device.
"""
from _bcm2835 cimport *
__author__ = 'vahid'
__all__ = [
  "I2C_CLOCK_DIVIDER_2500",
  "I2C_CLOCK_DIVIDER_626",
  "I2C_CLOCK_DIVIDER_150",
  "I2C_CLOCK_DIVIDER_148",

  "I2C_REASON_OK",
  "I2C_REASON_ERROR_NACK",
  "I2C_REASON_ERROR_CLKT",
  "I2C_REASON_ERROR_DATA",
]



"""
Specifies the divider used to generate the I2C clock from the system clock.
Clock divided is based on nominal base clock rate of 250MHz
"""
I2C_CLOCK_DIVIDER_2500 = c_BCM2835_I2C_CLOCK_DIVIDER_2500  # ///< 2500 = 10us = 100 kHz
I2C_CLOCK_DIVIDER_626 = c_BCM2835_I2C_CLOCK_DIVIDER_626  # ///< 622 = 2.504us = 399.3610 kHz
I2C_CLOCK_DIVIDER_150 = c_BCM2835_I2C_CLOCK_DIVIDER_150  # ///< 150 = 60ns = 1.666 MHz (default at reset)
I2C_CLOCK_DIVIDER_148 = c_BCM2835_I2C_CLOCK_DIVIDER_148  # ///< 148 = 59ns = 1.689 MHz


"""
Specifies the reason codes for the bcm2835_i2c_write and bcm2835_i2c_read functions.
"""
I2C_REASON_OK = c_BCM2835_I2C_REASON_OK  # ///< Success
I2C_REASON_ERROR_NACK = c_BCM2835_I2C_REASON_ERROR_NACK  # ///< Received a NACK
I2C_REASON_ERROR_CLKT = c_BCM2835_I2C_REASON_ERROR_CLKT  # ///< Received Clock Stretch Timeout
I2C_REASON_ERROR_DATA = c_BCM2835_I2C_REASON_ERROR_DATA  # ///< Not all data is sent / received


def i2c_begin():
    """
    Start I2C operations.
    Forces RPi I2C pins P1-03 (SDA) and P1-05 (SCL) to alternate function ALT0, which enables those pins for I2C interface.
    You should call bcm2835_i2c_end() when all I2C functions are complete to return the pins to their default functions
    :sa: bcm2835_i2c_end()
    :return:
    """
    c_bcm2835_i2c_begin()


def i2c_end():
    """
    End I2C operations.
    I2C pins P1-03 (SDA) and P1-05 (SCL) are returned to their default INPUT behaviour.

    :return:
    """
    c_bcm2835_i2c_end()


def i2c_setSlaveAddress(uint8_t addr):
    """
    Sets the I2C slave address.

    :param addr: The I2C slave address.
    :return:
    """
    c_bcm2835_i2c_setSlaveAddress(addr)


def i2c_setClockDivider(uint16_t divider):
    """
    Sets the I2C clock divider and therefore the I2C clock speed.

    :param divider: The desired I2C clock divider, one of I2C_CLOCK_DIVIDER_*,
    :return:
    """
    c_bcm2835_i2c_setClockDivider(divider)


def i2c_set_baudrate(uint32_t baudrate):
    """
    Sets the I2C clock divider by converting the baudrate parameter to
    the equivalent I2C clock divider. ( see \sa bcm2835_i2c_setClockDivider)
    For the I2C standard 100khz you would set baudrate to 100000
    The use of baudrate corresponds to its use in the I2C kernel device
    driver. (Of course, bcm2835 has nothing to do with the kernel driver)

    :param baudrate:
    :return:
    """
    c_bcm2835_i2c_set_baudrate(baudrate)


def i2c_write(const char * buf, uint32_t len):
    """
    Transfers any number of bytes to the currently selected I2C slave. (as previously set by \sa bcm2835_i2c_setSlaveAddress)

    :param buf: Buffer of bytes to send.
    :param len: Number of bytes in the buf buffer, and the number of bytes to send.
    :return: uint8_t: reason see \ref bcm2835I2CReasonCodes
    """
    #return c_bcm2835_i2c_write(const char * buf, len);
    pass
"""


    Transfers any number of bytes from the currently selected I2C slave.
    (as previously set by \sa bcm2835_i2c_setSlaveAddress)
    \param[in] buf Buffer of bytes to receive.
    \param[in] len Number of bytes in the buf buffer, and the number of bytes to received.
	\return reason see \ref bcm2835I2CReasonCodes
    extern uint8_t bcm2835_i2c_read(char* buf, uint32_t len);

    Allows reading from I2C slaves that require a repeated start (without any prior stop)
    to read after the required slave register has been set. For example, the popular
    MPL3115A2 pressure and temperature sensor. Note that your device must support or
    require this mode. If your device does not require this mode then the standard
    combined:
      \sa bcm2835_i2c_write
      \sa bcm2835_i2c_read
    are a better choice.
    Will read from the slave previously set by \sa bcm2835_i2c_setSlaveAddress
    \param[in] regaddr Buffer containing the slave register you wish to read from.
    \param[in] buf Buffer of bytes to receive.
    \param[in] len Number of bytes in the buf buffer, and the number of bytes to received.
	\return reason see \ref bcm2835I2CReasonCodes
    extern uint8_t bcm2835_i2c_read_register_rs(char* regaddr, char* buf, uint32_t len);

"""