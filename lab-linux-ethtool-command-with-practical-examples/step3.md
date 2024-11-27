# Modify Network Interface Settings

In this step, we will learn how to use the ethtool command to modify the settings of a network interface.

First, let's check the current settings of the `eth0` interface:

```bash
ethtool eth0
```

Example output:

```
Settings for eth0:
        Supported ports: [ TP ]
        Supported link modes:   10baseT/Half 10baseT/Full
                                100baseT/Half 100baseT/Full
                                1000baseT/Full
        Supported pause frame use: No
        Supports auto-negotiation: Yes
        Advertised link modes:  10baseT/Half 10baseT/Full
                                100baseT/Half 100baseT/Full
                                1000baseT/Full
        Advertised pause frame use: No
        Advertised auto-negotiation: Yes
        Speed: 1000Mb/s
        Duplex: Full
        Port: Twisted Pair
        PHYAD: 0
        Transceiver: internal
        Auto-negotiation: on
        MDI-X: off (auto)
        Supports Wake-on: pumbg
        Wake-on: d
        Current message level: 0x00000007 (7)
        Link detected: yes
```

Now, let's try to change the speed and duplex settings of the `eth0` interface:

```bash
sudo ethtool -s eth0 speed 100 duplex full
```

Example output:

```
Settings for eth0:
        Speed: 100Mb/s
        Duplex: Full
```

You can see that the speed has been changed to 100Mb/s and the duplex mode has been set to Full.

Additionally, you can use the ethtool command to enable or disable features of the network interface, such as:

```bash
# Enable wake-on-lan
sudo ethtool -s eth0 wol g

# Disable auto-negotiation
sudo ethtool -s eth0 autoneg off
```

Remember that modifying network interface settings can impact the connectivity of your system, so it's important to understand the implications of the changes you make.
