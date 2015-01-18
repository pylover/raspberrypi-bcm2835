# -*- coding: utf-8 -*-
from _bcm2835 cimport *
__author__ = 'vahid'
__all__ = [
  "SPI_BIT_ORDER_LSBFIRST",
  "SPI_BIT_ORDER_MSBFIRST",

  "SPI_MODE0",
  "SPI_MODE1",
  "SPI_MODE2",
  "SPI_MODE3",

  "SPI_CS0",
  "SPI_CS1",
  "SPI_CS2",
  "SPI_CS_NONE",

  "SPI_CLOCK_DIVIDER_65536",
  "SPI_CLOCK_DIVIDER_32768",
  "SPI_CLOCK_DIVIDER_16384",
  "SPI_CLOCK_DIVIDER_8192",
  "SPI_CLOCK_DIVIDER_4096",
  "SPI_CLOCK_DIVIDER_2048",
  "SPI_CLOCK_DIVIDER_1024",
  "SPI_CLOCK_DIVIDER_512",
  "SPI_CLOCK_DIVIDER_256",
  "SPI_CLOCK_DIVIDER_128",
  "SPI_CLOCK_DIVIDER_64",
  "SPI_CLOCK_DIVIDER_32",
  "SPI_CLOCK_DIVIDER_16",
  "SPI_CLOCK_DIVIDER_8",
  "SPI_CLOCK_DIVIDER_4",
  "SPI_CLOCK_DIVIDER_2",
  "SPI_CLOCK_DIVIDER_1",

  'SPI0_CS',
  'SPI0_FIFO',
  'SPI0_CLK',
  'SPI0_DLEN',
  'SPI0_LTOH',
  'SPI0_DC',

  'SPI0_CS_LEN_LONG',
  'SPI0_CS_DMA_LEN',
  'SPI0_CS_CSPOL2',
  'SPI0_CS_CSPOL1',
  'SPI0_CS_CSPOL0',
  'SPI0_CS_RXF',
  'SPI0_CS_RXR',
  'SPI0_CS_TXD',
  'SPI0_CS_RXD',
  'SPI0_CS_DONE',
  'SPI0_CS_TE_EN',
  'SPI0_CS_LMONO',
  'SPI0_CS_LEN',
  'SPI0_CS_REN',
  'SPI0_CS_ADCS',
  'SPI0_CS_INTR',
  'SPI0_CS_INTD',
  'SPI0_CS_DMAEN',
  'SPI0_CS_TA',
  'SPI0_CS_CSPOL',
  'SPI0_CS_CLEAR',
  'SPI0_CS_CLEAR_RX',
  'SPI0_CS_CLEAR_TX',
  'SPI0_CS_CPOL',
  'SPI0_CS_CPHA',
  'SPI0_CS_CS',


]



"""
The Serial Peripheral Interface (SPI) bus is a synchronous serial communications
device used for short distance, single master communication. The specification was
developed by Motorola and has become a de facto standard.

Typical applications include sensors and Secure Digital (SD) cards in embedded systems.
"""


"""
Defines for SPI
GPIO register offsets from SPI0_BASE.
Offsets into the SPI Peripheral block in bytes per 10.5 SPI Register Map
"""
SPI0_CS = c_BCM2835_SPI0_CS  # SPI Master Control and Status
SPI0_FIFO = c_BCM2835_SPI0_FIFO  # SPI Master TX and RX FIFOs
SPI0_CLK = c_BCM2835_SPI0_CLK  # SPI Master Clock Divider
SPI0_DLEN = c_BCM2835_SPI0_DLEN  # SPI Master Data Length
SPI0_LTOH = c_BCM2835_SPI0_LTOH  # SPI LOSSI mode TOH
SPI0_DC = c_BCM2835_SPI0_DC  # SPI DMA DREQ Controls


"""
Register masks for SPI0_CS
"""
SPI0_CS_LEN_LONG = c_BCM2835_SPI0_CS_LEN_LONG  # Enable Long data word in Lossi mode if DMA_LEN is set
SPI0_CS_DMA_LEN = c_BCM2835_SPI0_CS_DMA_LEN  # Enable DMA mode in Lossi mode
SPI0_CS_CSPOL2 = c_BCM2835_SPI0_CS_CSPOL2  # Chip Select 2 Polarity
SPI0_CS_CSPOL1 = c_BCM2835_SPI0_CS_CSPOL1  # Chip Select 1 Polarity
SPI0_CS_CSPOL0 = c_BCM2835_SPI0_CS_CSPOL0  # Chip Select 0 Polarity
SPI0_CS_RXF = c_BCM2835_SPI0_CS_RXF  # RXF - RX FIFO Full
SPI0_CS_RXR = c_BCM2835_SPI0_CS_RXR  # RXR RX FIFO needs Reading ( full)
SPI0_CS_TXD = c_BCM2835_SPI0_CS_TXD  # TXD TX FIFO can accept Data
SPI0_CS_RXD = c_BCM2835_SPI0_CS_RXD  # RXD RX FIFO contains Data
SPI0_CS_DONE = c_BCM2835_SPI0_CS_DONE  # Done transfer Done
SPI0_CS_TE_EN = c_BCM2835_SPI0_CS_TE_EN  # Unused
SPI0_CS_LMONO = c_BCM2835_SPI0_CS_LMONO  # Unused
SPI0_CS_LEN = c_BCM2835_SPI0_CS_LEN  # LEN LoSSI enable
SPI0_CS_REN = c_BCM2835_SPI0_CS_REN  # REN Read Enable
SPI0_CS_ADCS = c_BCM2835_SPI0_CS_ADCS  # ADCS Automatically Deassert Chip Select
SPI0_CS_INTR = c_BCM2835_SPI0_CS_INTR  # INTR Interrupt on RXR
SPI0_CS_INTD = c_BCM2835_SPI0_CS_INTD  # INTD Interrupt on Done
SPI0_CS_DMAEN = c_BCM2835_SPI0_CS_DMAEN  # DMAEN DMA Enable
SPI0_CS_TA = c_BCM2835_SPI0_CS_TA  # Transfer Active
SPI0_CS_CSPOL = c_BCM2835_SPI0_CS_CSPOL  # Chip Select Polarity
SPI0_CS_CLEAR = c_BCM2835_SPI0_CS_CLEAR  # Clear FIFO Clear RX and TX
SPI0_CS_CLEAR_RX = c_BCM2835_SPI0_CS_CLEAR_RX  # Clear FIFO Clear RX
SPI0_CS_CLEAR_TX = c_BCM2835_SPI0_CS_CLEAR_TX  # Clear FIFO Clear TX
SPI0_CS_CPOL = c_BCM2835_SPI0_CS_CPOL  # Clock Polarity
SPI0_CS_CPHA = c_BCM2835_SPI0_CS_CPHA  # Clock Phase
SPI0_CS_CS = c_BCM2835_SPI0_CS_CS  # Chip Select


"""
Specifies the SPI data bit ordering for bcm2835_spi_setBitOrder()
"""
SPI_BIT_ORDER_LSBFIRST = c_BCM2835_SPI_BIT_ORDER_LSBFIRST  # ///< LSB First
SPI_BIT_ORDER_MSBFIRST = c_BCM2835_SPI_BIT_ORDER_MSBFIRST  # ///< MSB First


"""
Specify the SPI chip select pin(s)
"""
SPI_MODE0 = c_BCM2835_SPI_MODE0  # ///< CPOL = 0, CPHA = 0
SPI_MODE1 = c_BCM2835_SPI_MODE1  # ///< CPOL = 0, CPHA = 1
SPI_MODE2 = c_BCM2835_SPI_MODE2  # ///< CPOL = 1, CPHA = 0
SPI_MODE3 = c_BCM2835_SPI_MODE3  # ///< CPOL = 1, CPHA = 1

"""
Specify the SPI chip select pin(s)
"""
SPI_CS0 = c_BCM2835_SPI_CS0  # Chip Select 0
SPI_CS1 = c_BCM2835_SPI_CS1  # Chip Select 1
SPI_CS2 = c_BCM2835_SPI_CS2  # Chip Select 2 (ie pins CS1 and CS2 are asserted)
SPI_CS_NONE = c_BCM2835_SPI_CS_NONE  # No CS, control it yourself

"""
Specifies the divider used to generate the SPI clock from the system clock.
Figures below give the divider, clock period and clock frequency.
Clock divided is based on nominal base clock rate of 250MHz
It is reported that (contrary to the documentation) any even divider may used.
The frequencies shown for each divider have been confirmed by measurement
"""
SPI_CLOCK_DIVIDER_65536 = c_BCM2835_SPI_CLOCK_DIVIDER_65536  # ///< 65536 = 262.144us = 3.814697260kHz
SPI_CLOCK_DIVIDER_32768 = c_BCM2835_SPI_CLOCK_DIVIDER_32768  # ///< 32768 = 131.072us = 7.629394531kHz
SPI_CLOCK_DIVIDER_16384 = c_BCM2835_SPI_CLOCK_DIVIDER_16384  # ///< 16384 = 65.536us = 15.25878906kHz
SPI_CLOCK_DIVIDER_8192 = c_BCM2835_SPI_CLOCK_DIVIDER_8192  # ///< 8192 = 32.768us = 30/51757813kHz
SPI_CLOCK_DIVIDER_4096 = c_BCM2835_SPI_CLOCK_DIVIDER_4096  # ///< 4096 = 16.384us = 61.03515625kHz
SPI_CLOCK_DIVIDER_2048 = c_BCM2835_SPI_CLOCK_DIVIDER_2048  # ///< 2048 = 8.192us = 122.0703125kHz
SPI_CLOCK_DIVIDER_1024 = c_BCM2835_SPI_CLOCK_DIVIDER_1024  # ///< 1024 = 4.096us = 244.140625kHz
SPI_CLOCK_DIVIDER_512 = c_BCM2835_SPI_CLOCK_DIVIDER_512  # ///< 512 = 2.048us = 488.28125kHz
SPI_CLOCK_DIVIDER_256 = c_BCM2835_SPI_CLOCK_DIVIDER_256  # ///< 256 = 1.024us = 976.5625MHz
SPI_CLOCK_DIVIDER_128 = c_BCM2835_SPI_CLOCK_DIVIDER_128  # ///< 128 = 512ns = = 1.953125MHz
SPI_CLOCK_DIVIDER_64 = c_BCM2835_SPI_CLOCK_DIVIDER_64  # ///< 64 = 256ns = 3.90625MHz
SPI_CLOCK_DIVIDER_32 = c_BCM2835_SPI_CLOCK_DIVIDER_32  # ///< 32 = 128ns = 7.8125MHz
SPI_CLOCK_DIVIDER_16 = c_BCM2835_SPI_CLOCK_DIVIDER_16  # ///< 16 = 64ns = 15.625MHz
SPI_CLOCK_DIVIDER_8 = c_BCM2835_SPI_CLOCK_DIVIDER_8  # ///< 8 = 32ns = 31.25MHz
SPI_CLOCK_DIVIDER_4 = c_BCM2835_SPI_CLOCK_DIVIDER_4  # ///< 4 = 16ns = 62.5MHz
SPI_CLOCK_DIVIDER_2 = c_BCM2835_SPI_CLOCK_DIVIDER_2  # ///< 2 = 8ns = 125MHz, fastest you can get
SPI_CLOCK_DIVIDER_1 = c_BCM2835_SPI_CLOCK_DIVIDER_1  # ///< 1 = 262.144us = 3.814697260kHz, same as 0/65536


"""
    \defgroup spi SPI access
    These functions let you use SPI0 (Serial Peripheral Interface) to
    interface with an external SPI device.
    @{

    Start SPI operations.
    Forces RPi SPI0 pins P1-19 (MOSI), P1-21 (MISO), P1-23 (CLK), P1-24 (CE0) and P1-26 (CE1)
    to alternate function ALT0, which enables those pins for SPI interface.
    You should call bcm2835_spi_end() when all SPI funcitons are complete to return the pins to
    their default functions
    \sa  bcm2835_spi_end()
    extern void bcm2835_spi_begin(void);

    End SPI operations.
    SPI0 pins P1-19 (MOSI), P1-21 (MISO), P1-23 (CLK), P1-24 (CE0) and P1-26 (CE1)
    are returned to their default INPUT behaviour.
    extern void bcm2835_spi_end(void);

    Sets the SPI bit order
    NOTE: has no effect. Not supported by SPI0.
    Defaults to
    \param[in] order The desired bit order, one of SPI_BIT_ORDER_*,
    see \ref bcm2835SPIBitOrder
    extern void bcm2835_spi_setBitOrder(uint8_t order);

    Sets the SPI clock divider and therefore the
    SPI clock speed.
    \param[in] divider The desired SPI clock divider, one of SPI_CLOCK_DIVIDER_*,
    see \ref bcm2835SPIClockDivider
    extern void bcm2835_spi_setClockDivider(uint16_t divider);

    Sets the SPI data mode
    Sets the clock polariy and phase
    \param[in] mode The desired data mode, one of SPI_MODE*,
    see \ref bcm2835SPIMode
    extern void bcm2835_spi_setDataMode(uint8_t mode);


    Sets the chip select pin(s)
    When an bcm2835_spi_transfer() is made, the selected pin(s) will be asserted during the
    transfer.
    \param[in] cs Specifies the CS pins(s) that are used to activate the desired slave.
      One of SPI_CS*, see \ref bcm2835SPIChipSelect
    extern void bcm2835_spi_chipSelect(uint8_t cs);

    Sets the chip select pin polarity for a given pin
    When an bcm2835_spi_transfer() occurs, the currently selected chip select pin(s)
    will be asserted to the
    value given by active. When transfers are not happening, the chip select pin(s)
    return to the complement (inactive) value.
    \param[in] cs The chip select pin to affect
    \param[in] active Whether the chip select pin is to be active HIGH
    extern void bcm2835_spi_setChipSelectPolarity(uint8_t cs, uint8_t active);

    Transfers one byte to and from the currently selected SPI slave.
    Asserts the currently selected CS pins (as previously set by bcm2835_spi_chipSelect)
    during the transfer.
    Clocks the 8 bit value out on MOSI, and simultaneously clocks in data from MISO.
    Returns the read data byte from the slave.
    Uses polled transfer as per section 10.6.1 of the BCM 2835 ARM Peripherls manual
    \param[in] value The 8 bit data byte to write to MOSI
    \return The 8 bit byte simultaneously read from  MISO
    \sa bcm2835_spi_transfern()
    extern uint8_t bcm2835_spi_transfer(uint8_t value);

    Transfers any number of bytes to and from the currently selected SPI slave.
    Asserts the currently selected CS pins (as previously set by bcm2835_spi_chipSelect)
    during the transfer.
    Clocks the len 8 bit bytes out on MOSI, and simultaneously clocks in data from MISO.
    The data read read from the slave is placed into rbuf. rbuf must be at least len bytes long
    Uses polled transfer as per section 10.6.1 of the BCM 2835 ARM Peripherls manual
    \param[in] tbuf Buffer of bytes to send.
    \param[out] rbuf Received bytes will by put in this buffer
    \param[in] len Number of bytes in the tbuf buffer, and the number of bytes to send/received
    \sa bcm2835_spi_transfer()
    extern void bcm2835_spi_transfernb(char* tbuf, char* rbuf, uint32_t len);

    Transfers any number of bytes to and from the currently selected SPI slave
    using bcm2835_spi_transfernb.
    The returned data from the slave replaces the transmitted data in the buffer.
    \param[in,out] buf Buffer of bytes to send. Received bytes will replace the contents
    \param[in] len Number of bytes int eh buffer, and the number of bytes to send/received
    \sa bcm2835_spi_transfer()
    extern void bcm2835_spi_transfern(char* buf, uint32_t len);

    Transfers any number of bytes to the currently selected SPI slave.
    Asserts the currently selected CS pins (as previously set by bcm2835_spi_chipSelect)
    during the transfer.
    \param[in] buf Buffer of bytes to send.
    \param[in] len Number of bytes in the tbuf buffer, and the number of bytes to send
    extern void bcm2835_spi_writenb(char* buf, uint32_t len);


"""