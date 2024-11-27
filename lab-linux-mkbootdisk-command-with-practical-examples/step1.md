# Understand the Purpose of mkbootdisk Command

In this step, you will learn about the purpose and use of the `mkbootdisk` command in Linux. The `mkbootdisk` command is a utility that allows you to create a bootable USB drive or CD/DVD from an ISO image or a running Linux system.

The `mkbootdisk` command is particularly useful when you need to create a bootable media for installing or troubleshooting a Linux distribution. It can be used to create a live USB drive that can be used to boot into a Linux environment without modifying the host system.

Let's explore the basic usage of the `mkbootdisk` command:

```bash
sudo mkbootdisk --iso /path/to/linux.iso
```

This command will create a bootable USB drive from the specified ISO image.

Example output:

```
Checking for required utilities...
Preparing bootable USB drive...
Copying ISO image to USB drive...
Bootable USB drive created successfully.
```

The `mkbootdisk` command can also be used to create a bootable USB drive from a running Linux system:

```bash
sudo mkbootdisk --live
```

This command will create a bootable USB drive that contains a live version of the current Linux system.

Example output:

```
Checking for required utilities...
Preparing bootable USB drive...
Copying live system to USB drive...
Bootable USB drive created successfully.
```

In the next step, you will learn how to create a bootable USB drive using the `mkbootdisk` command.
