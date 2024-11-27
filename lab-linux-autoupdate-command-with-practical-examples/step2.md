# Configure Automatic Updates on Ubuntu 22.04

In this step, we will configure automatic updates on an Ubuntu 22.04 system. By enabling automatic updates, your system will automatically download and install security patches and other important updates, keeping your system secure and up-to-date.

First, let's check the current update configuration:

```
sudo apt-get update
sudo apt-get upgrade -s
```

The `-s` or `--simulate` option will show us what updates would be installed without actually installing them.

Next, we'll configure automatic updates using the `unattended-upgrades` package:

```
sudo apt-get install -y unattended-upgrades
sudo dpkg-reconfigure -plow unattended-upgrades
```

The `dpkg-reconfigure` command will open a configuration file where we can customize the automatic update settings. By default, it is set to automatically install security updates.

To verify the configuration, we can check the `/etc/apt/apt.conf.d/50unattended-upgrades` file:

```
cat /etc/apt/apt.conf.d/50unattended-upgrades
```

Example output:

```
// Automatically upgrade packages from these (origin, archive) pairs
Unattended-Upgrade::Allowed-Origins {
        "${distro_id}:${distro_codename}";
        "${distro_id}:${distro_codename}-security";
        // Extended Security Maintenance; doesn't necessarily exist for
        // every release and this system may not have it installed, but if
        // available, the policy for updates is such that unattended-upgrades
        // should also install from here by default.
        "${distro_id}ESM:${distro_codename}";
};
```

This configuration will automatically install security updates for the Ubuntu 22.04 release.
