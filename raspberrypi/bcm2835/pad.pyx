# -*- coding: utf-8 -*-
from _bcm2835 cimport *
__author__ = 'vahid'


"""
Pad control register offsets from GPIO_PADS
"""
BCM2835_PADS_GPIO_0_27 = c_BCM2835_PADS_GPIO_0_27  # Pad control register for pads 0 to 27
BCM2835_PADS_GPIO_28_45 = c_BCM2835_PADS_GPIO_28_45  # Pad control register for pads 28 to 45
BCM2835_PADS_GPIO_46_53 = c_BCM2835_PADS_GPIO_46_53  # Pad control register for pads 46 to 53


"""
Pad Control masks
"""
BCM2835_PAD_PASSWRD = c_BCM2835_PAD_PASSWRD   # Password to enable setting pad mask
BCM2835_PAD_SLEW_RATE_UNLIMITED = c_BCM2835_PAD_SLEW_RATE_UNLIMITED  # Slew rate unlimited
BCM2835_PAD_HYSTERESIS_ENABLED = c_BCM2835_PAD_HYSTERESIS_ENABLED   # Hysteresis enabled
BCM2835_PAD_DRIVE_2mA = c_BCM2835_PAD_DRIVE_2mA  # 2mA drive current
BCM2835_PAD_DRIVE_4mA = c_BCM2835_PAD_DRIVE_4mA  # 4mA drive current
BCM2835_PAD_DRIVE_6mA = c_BCM2835_PAD_DRIVE_6mA  # 6mA drive current
BCM2835_PAD_DRIVE_8mA = c_BCM2835_PAD_DRIVE_8mA  # 8mA drive current
BCM2835_PAD_DRIVE_10mA = c_BCM2835_PAD_DRIVE_10mA  # 10mA drive current
BCM2835_PAD_DRIVE_12mA = c_BCM2835_PAD_DRIVE_12mA  # 12mA drive current
BCM2835_PAD_DRIVE_14mA = c_BCM2835_PAD_DRIVE_14mA  # 14mA drive current
BCM2835_PAD_DRIVE_16mA = c_BCM2835_PAD_DRIVE_16mA  # 16mA drive current


"""
Pad group specification for bcm2835_gpio_pad()
"""
BCM2835_PAD_GROUP_GPIO_0_27 = c_BCM2835_PAD_GROUP_GPIO_0_27  # Pad group for GPIO pads 0 to 27
BCM2835_PAD_GROUP_GPIO_28_45 = c_BCM2835_PAD_GROUP_GPIO_28_45  # Pad group for GPIO pads 28 to 45
BCM2835_PAD_GROUP_GPIO_46_53 = c_BCM2835_PAD_GROUP_GPIO_46_53  # Pad group for GPIO pads 46 to 53


"""
    Reads and returns the Pad Control for the given GPIO group.
    \param[in] group The GPIO pad group number, one of PAD_GROUP_GPIO_*
    \return Mask of bits from PAD_* from \ref bcm2835PadGroup
    extern uint32_t bcm2835_gpio_pad(uint8_t group);

    Sets the Pad Control for the given GPIO group.
    \param[in] group The GPIO pad group number, one of PAD_GROUP_GPIO_*
    \param[in] control Mask of bits from PAD_* from \ref bcm2835PadGroup. Note
    that it is not necessary to include PAD_PASSWRD in the mask as this
    is automatically included.
    extern void bcm2835_gpio_set_pad(uint8_t group, uint32_t control);
"""