# Monitoring System Information with procinfo

In this step, we will learn how to use the `procinfo` command to monitor specific system information.

The `procinfo` command provides a wide range of options to customize the output. Let's explore some of the most useful options:

1. Display CPU information:

```bash
sudo procinfo -C
```

Example output:

```
CPU:
  CPU0: Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz
  CPU1: Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz
  Frequency (MHz): 2600.000
  Load average: 0.00 0.01 0.00
```

2. Display memory information:

```bash
sudo procinfo -M
```

Example output:

```
Memory:
  Total: 1024 MB
  Free: 583 MB
  Buffers: 31 MB
  Cached: 279 MB
```

3. Display disk information:

```bash
sudo procinfo -D
```

Example output:

```
Disk:
  /dev/vda1 (ext4): 8.0 GB, 8000000000 bytes
  Inodes: 2097152, Used: 23781
```

4. Display network information:

```bash
sudo procinfo -N
```

Example output:

```
Network:
  eth0: RX: 0 packets, 0 bytes | TX: 0 packets, 0 bytes
```

You can also combine these options to display multiple types of system information at once. For example:

```bash
sudo procinfo -CMN
```

This command will display CPU, memory, and network information in a single output.

The `procinfo` command provides a lot of flexibility in customizing the output to suit your specific monitoring needs. In the next step, we will explore how to further customize the `procinfo` output.
