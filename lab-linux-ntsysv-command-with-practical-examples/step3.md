# Manage Runlevels Using ntsysv

In this step, we will learn how to use the ntsysv command to manage system runlevels in Linux.

Runlevels are a way to control the state of the system, determining which services and processes are started or stopped. The ntsysv command allows you to easily configure the services that should be started or stopped for each runlevel.

Let's open the ntsysv interface and navigate to the "Runlevel editor" section:

```bash
sudo ntsysv
```

You will see a list of runlevels, typically 0 through 6, and the services associated with each runlevel.

```
 Runlevel editor

 [*] Runlevel 0 (Halt)
 [*] Runlevel 1 (Single user mode)
 [*] Runlevel 2 (Multiuser, without NFS)
 [*] Runlevel 3 (Full multiuser mode)
 [*] Runlevel 4 (Unused)
 [*] Runlevel 5 (X11)
 [*] Runlevel 6 (Reboot)

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

You can navigate through the runlevels and toggle the services associated with each runlevel. For example, you can disable the `apache2` service for runlevel 3 by unchecking the corresponding box.

After making your changes, press `F12` to exit and save the changes.
