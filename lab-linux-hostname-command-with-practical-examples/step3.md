# Change the Hostname Permanently

In this step, we will learn how to change the hostname of the system permanently.

To change the hostname permanently, we need to update the configuration files that store the hostname information. In Ubuntu 22.04, the hostname is stored in the `/etc/hostname` file.

First, let's change the contents of the `/etc/hostname` file to the new hostname:

```bash
sudo nano /etc/hostname
```

Replace the current hostname with the new one, for example, `new-hostname`, and save the file.

Next, we need to update the `/etc/hosts` file to reflect the new hostname:

```bash
sudo nano /etc/hosts
```

Find the line that starts with `127.0.0.1` and replace the hostname with the new one.

Finally, we need to reboot the system for the changes to take effect:

```bash
sudo reboot
```

After the system reboots, the new hostname will be permanently set.

Let's verify the new hostname:

```bash
hostname
```

Example output:

```
new-hostname
```

As you can see, the hostname has been changed to `new-hostname` and this change will persist even after rebooting the system.
