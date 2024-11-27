# Create a Custom initramfs Image

In this step, you will learn how to create a custom initramfs image using the `mkinitrd` command. Customizing the initramfs can be useful in scenarios where you need to include additional drivers, modules, or utilities that are not part of the default initramfs.

Let's start by creating a directory to store the custom initramfs files:

```bash
mkdir ~/project/custom-initramfs
cd ~/project/custom-initramfs
```

Next, we'll create a custom configuration file for the initramfs. This file will specify the additional content we want to include in the image.

```bash
nano ~/project/custom-initramfs/initramfs.conf
```

Add the following content to the `initramfs.conf` file:

```
add_dracutmodules+="custom-module"
```

This configuration will include a custom module named `custom-module` in the initramfs image.

Now, let's generate the custom initramfs image:

```bash
sudo mkinitrd -v -f /boot/custom-initramfs.img --with-modules --with-firmware --with-usb --with-i18n --with-nfs --with-crypt --with-dm --with-lvm --with-raid --with-md --with-fips --with-selinux --with-plymouth --with-shutdown --with-network --with-multipath --with-kernel-modules=custom-module
```

The command above creates a custom initramfs image named `custom-initramfs.img` and stores it in the `/boot` directory. The `--with-*` options specify the additional modules, drivers, and utilities to be included in the initramfs.

Example output:

```
Creating initramfs image file '/boot/custom-initramfs.img'
Copying modules to initramfs image...
Preparing initramfs image...
```
