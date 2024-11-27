# Introduction to the lilo Command

In this step, we will explore the lilo (Linux Loader) command, which is a boot loader used to load the Linux operating system. The lilo command is responsible for loading the kernel and initial RAM disk (initrd) during the boot process.

First, let's check the version of the lilo command installed on our Ubuntu 22.04 Docker container:

```bash
sudo lilo -V
```

Example output:

```
lilo version 22.8.1 (2015-05-11)
```

The lilo command is used to install and configure the boot loader on the system. It reads the boot loader configuration file, usually located at `/etc/lilo.conf`, and updates the boot sectors on the disk accordingly.

To view the current lilo configuration, we can use the following command:

```bash
sudo cat /etc/lilo.conf
```

Example output:

```
boot=/dev/sda
map=/boot/map
install=/boot/boot.b
prompt
timeout=50
image=/boot/vmlinuz
  label=linux
  read-only
  root=/dev/sda1
```

This configuration file specifies the location of the kernel image, the root file system, and other boot options.

Now, let's explore some basic lilo commands:

- `sudo lilo`: This command updates the boot sectors on the disk based on the configuration file.
- `sudo lilo -t`: This command performs a test run of the lilo command without actually updating the boot sectors.
- `sudo lilo -v`: This command runs lilo in verbose mode, providing more detailed output.

In the next step, we will learn how to configure the lilo boot loader.
