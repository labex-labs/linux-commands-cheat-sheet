# Understand the watch Command

In this step, you will learn about the `watch` command in Linux, which allows you to repeatedly execute a command and monitor its output.

The `watch` command is a powerful tool for system monitoring and management. It can be used to track changes in system processes, file modifications, and other real-time events.

To start using the `watch` command, simply run the following in your terminal:

```
watch [options] <command>
```

Here, `[options]` are the optional parameters you can pass to the `watch` command, and `<command>` is the command you want to execute and monitor.

Some common options for the `watch` command include:

- `-n, --interval <seconds>`: Set the update interval for the command execution (default is 2 seconds).
- `-d, --difference`: Highlight the differences between successive updates.
- `-t, --no-title`: Hide the header showing the current time and the command being executed.

For example, to monitor the output of the `df` command (which shows the disk usage) every 5 seconds, you can run:

```
watch -n 5 df -h
```

Example output:

```
Every 5.0s: df -h                                                   labex@ubuntu: Fri Apr 28 14:35:41 2023

Filesystem      Size  Used Avail Use% Mounted on
overlay         30G  4.2G   26G  14% /
tmpfs           64M     0   64M   0% /dev
tmpfs           2.0G     0  2.0G   0% /sys/fs/cgroup
/dev/sda1       30G  4.2G   26G  14% /etc/hosts
shm              64M     0   64M   0% /dev/shm
overlay         30G  4.2G   26G  14% /etc/resolv.conf
overlay         30G  4.2G   26G  14% /etc/hostname
overlay         30G  4.2G   26G  14% /etc/host.conf
tmpfs           2.0G     0  2.0G   0% /proc/acpi
tmpfs           2.0G     0  2.0G   0% /proc/scsi
tmpfs           2.0G     0  2.0G   0% /sys/firmware
```

The `watch` command will continuously execute the `df -h` command and display the output, updating it every 5 seconds.
