# Configure System Services with ntsysv

In this step, we will learn how to use the ntsysv command to configure system services in Linux.

First, let's open the ntsysv interface:

```bash
sudo ntsysv
```

You will see a list of system services that can be enabled or disabled. Use the arrow keys to navigate through the list, and the spacebar to toggle the service status.

For example, let's enable the `apache2` service:

```
 Runlevel editor

 [ ] acpid
 [ ] alsa
 [*] apache2
 [ ] avahi-daemon
 [ ] bluetooth
 [ ] brltty
 [ ] console-setup.sh
 [ ] cron
 [ ] cups
 [ ] dbus
 [ ] gdm3
 [ ] getty
 [ ] grub-common
 [ ] irqbalance
 [ ] kmod
 [ ] lvm2-monitor
 [ ] ModemManager
 [ ] NetworkManager
 [ ] nfs-common
 [ ] nmbd
 [ ] nscd
 [ ] open-vm-tools
 [ ] plymouth
 [ ] pppd-dns
 [ ] rsyslog
 [ ] samba
 [ ] saned
 [ ] saslauthd
 [ ] smbd
 [ ] snmpd
 [ ] ssh
 [ ] thermald
 [ ] ufw
 [ ] unattended-upgrades
 [ ] uuidd
 [ ] whoopsie
 [ ] winbind
 [ ] x11-common

 <Tab>,<Space> selects, <Enter> activates buttons, <F12> exits
```

After making your changes, press `F12` to exit and save the changes.
