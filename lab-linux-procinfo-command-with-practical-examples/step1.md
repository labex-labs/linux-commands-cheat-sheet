# Introduction to procinfo Command

In this step, we will explore the `procinfo` command, which is a powerful tool for monitoring system information on Linux. The `procinfo` command provides a comprehensive overview of various system parameters, including CPU, memory, disk, and network usage.

First, let's install the `procinfo` package on our Ubuntu 22.04 Docker container:

```bash
sudo apt-get update
sudo apt-get install -y procinfo
```

Now, let's run the `procinfo` command to see the default system information output:

```bash
sudo procinfo
```

Example output:

```
Linux 5.15.0-1025-aws (ubuntu) 	22.04.1 LTS 	2023-03-28 	_x86_64_

CPU:
  CPU0: Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz
  CPU1: Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz
  Frequency (MHz): 2600.000
  Load average: 0.00 0.01 0.00

Memory:
  Total: 1024 MB
  Free: 583 MB
  Buffers: 31 MB
  Cached: 279 MB

Swap:
  Total: 0 MB
  Free: 0 MB

Uptime: 0 days, 0:00

Disk:
  /dev/vda1 (ext4): 8.0 GB, 8000000000 bytes
  Inodes: 2097152, Used: 23781

Network:
  eth0: RX: 0 packets, 0 bytes | TX: 0 packets, 0 bytes
```

The `procinfo` command provides a wealth of information about the system, including CPU, memory, swap, uptime, and disk and network usage. This information can be useful for monitoring system performance and troubleshooting issues.

In the next step, we will explore how to customize the `procinfo` output to focus on specific system information.
