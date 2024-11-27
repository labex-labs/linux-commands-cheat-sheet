# Understand the ntsysv Command

In this step, we will explore the ntsysv command, a powerful tool for configuring and managing system services in Linux. The ntsysv command provides a text-based user interface (TUI) that allows you to easily enable or disable system services.

First, let's understand the basic usage of the ntsysv command:

```bash
sudo ntsysv
```

This will open the ntsysv interface, where you can navigate through the list of available system services and toggle their status.

Example output:

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

In the ntsysv interface, you can use the arrow keys to navigate through the list of services, and the spacebar to toggle the service status. The services with a `[*]` are currently enabled, while the ones with `[ ]` are disabled.

After making your changes, press `F12` to exit and save the changes.
