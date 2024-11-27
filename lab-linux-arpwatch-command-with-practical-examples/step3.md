# Monitor Network Activity with arpwatch

In this final step, you will learn how to use the arpwatch command to monitor network activity on your Ubuntu 22.04 system.

First, let's start the arpwatch service if it's not already running:

```bash
sudo arpwatch
```

This will start the arpwatch daemon and begin monitoring your network.

By default, arpwatch logs its output to the `/var/log/arpwatch.log` file. You can view the log file using the following command:

```bash
sudo tail -n 20 /var/log/arpwatch.log
```

This will display the last 20 entries in the arpwatch log file.

Example output:

```
Aug 23 14:32:01 myhost arpwatch[12345]: new station 192.168.1.100 0:11:22:33:44:55
Aug 23 14:33:15 myhost arpwatch[12345]: changed ethernet address 192.168.1.101 0:66:77:88:99:aa -> 0:aa:bb:cc:dd:ee
```

The log entries show when a new station is detected on the network (new IP-to-MAC address mapping) or when an existing mapping changes.

You can also configure arpwatch to send email notifications when it detects changes in the ARP table. To do this, you'll need to configure the email settings in the arpwatch configuration file located at `/etc/arpwatch.conf`.

```bash
sudo nano /etc/arpwatch.conf
```

In the configuration file, uncomment the `ARPWATCH_EMAIL` and `ARPWATCH_SUBJECT` lines and update them with your email settings.

After making the changes, save the file and restart the arpwatch service:

```bash
sudo systemctl restart arpwatch
```

Now, arpwatch will send email notifications whenever it detects changes in the ARP table.
