# Manage Automatic Updates Using the Command Line

In this step, we will learn how to manage automatic updates using the command line on an Ubuntu 22.04 system.

First, let's check the current status of automatic updates:

```
sudo apt-get update
sudo apt-get upgrade -s
```

The `-s` or `--simulate` option will show us what updates would be installed without actually installing them.

To manually trigger an automatic update, we can use the following command:

```
sudo unattended-upgrade
```

This will initiate the automatic update process and install any available security updates and other important updates.

You can also check the logs to see the results of the automatic update process:

```
sudo tail -n 20 /var/log/unattended-upgrades/unattended-upgrades.log
```

This will show the last 20 lines of the unattended-upgrades log file, which contains information about the updates that were installed.

To temporarily disable automatic updates, you can run the following command:

```
sudo systemctl stop unattended-upgrades.service
```

And to re-enable automatic updates, use:

```
sudo systemctl start unattended-upgrades.service
```

Example output:

```
Stopping unattended-upgrades.service
Starting unattended-upgrades.service
```

Finally, you can configure the frequency of automatic updates by editing the `/etc/apt/apt.conf.d/20auto-upgrades` file:

```
sudo nano /etc/apt/apt.conf.d/20auto-upgrades
```

In this file, you can adjust the values for `APT::Periodic::Update-Package-Lists` and `APT::Periodic::Unattended-Upgrade` to control how often the system checks for and installs updates.
