# Configure Wireless Network Interface Using iwconfig

In this step, we will learn how to configure a wireless network interface using the `iwconfig` command.

First, let's identify the wireless network interface on our system. We can do this by running the `iwconfig` command again:

```bash
sudo iwconfig
```

The output should show a wireless interface, typically named `wlan0`.

Now, let's configure the wireless network interface with the following settings:

- ESSID (network name): "my_wireless_network"
- Frequency: 2.412 GHz
- Bit rate: 54 Mb/s

We can set these parameters using the `iwconfig` command:

```bash
sudo iwconfig wlan0 essid "my_wireless_network"
sudo iwconfig wlan0 freq 2.412G
sudo iwconfig wlan0 rate 54M
```

Example output:

```
lo        no wireless extensions.
eth0      no wireless extensions.
wlan0     IEEE 802.11  ESSID:"my_wireless_network"
          Mode:Managed  Frequency:2.412 GHz  Access Point: 12:34:56:78:9A:BC
          Bit Rate=54 Mb/s   Tx-Power=20 dBm
          Retry short limit:7   RTS thr:off   Fragment thr:off
          Power Management:off
```

The output shows that the wireless network interface `wlan0` has been configured with the specified ESSID, frequency, and bit rate.
