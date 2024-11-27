# Configuring lilo Boot Loader

In this step, we will learn how to configure the lilo boot loader on our Ubuntu 22.04 Docker container.

First, let's create a backup of the existing lilo configuration file:

```bash
sudo cp /etc/lilo.conf /etc/lilo.conf.bak
```

Now, let's open the lilo configuration file using the nano text editor:

```bash
sudo nano /etc/lilo.conf
```

In the configuration file, we can make the following changes:

1. Update the `boot` parameter to point to the correct boot device, which is typically `/dev/sda` for a single disk system.
2. Modify the `image` parameter to point to the correct kernel image location, which is usually `/boot/vmlinuz`.
3. Update the `label` parameter to a descriptive name for the boot entry, such as "Ubuntu 22.04".
4. Adjust the `timeout` parameter to set the number of seconds the boot loader will wait before automatically booting the default entry.

Here's an example configuration:

```
boot=/dev/sda
map=/boot/map
install=/boot/boot.b
prompt
timeout=10
image=/boot/vmlinuz
  label=Ubuntu 22.04
  read-only
  root=/dev/sda1
```

After making the changes, save the file and exit the nano editor.

Next, we need to update the boot sectors on the disk with the new configuration:

```bash
sudo lilo
```

This command will update the boot sectors based on the changes made in the `/etc/lilo.conf` file.

Finally, let's verify the updated lilo configuration:

```bash
sudo cat /etc/lilo.conf
```

You should see the changes you made in the configuration file.

Now, the lilo boot loader is configured and ready to use.
