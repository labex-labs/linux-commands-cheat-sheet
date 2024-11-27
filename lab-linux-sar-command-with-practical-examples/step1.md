# Understand the sar Command and Its Purpose

In this step, you will learn about the sar (System Activity Reporter) command in Linux and understand its purpose in system monitoring and performance analysis.

The sar command is a powerful tool that collects, reports, and saves system activity information. It provides a comprehensive view of various system performance metrics, including CPU utilization, memory usage, network traffic, and disk I/O. The sar command is part of the sysstat package, which is typically pre-installed on most Linux distributions.

To install the sysstat package, run the following command:

```
sudo apt-get update
sudo apt-get install sysstat
```

Once the installation is complete, you can start using the sar command to monitor your system's performance.

Example usage:

```
sudo sar -u 1 5
```

This command will display the CPU utilization every 1 second for 5 iterations.

Example output:

```
Linux 5.15.0-1023-aws (ip-172-31-19-178)   01/24/2023      _x86_64_        (2 CPU)

01:53:46 PM     CPU     %user     %nice   %system   %iowait    %steal     %idle
01:53:47 PM     all      0.00      0.00      0.00      0.00      0.00    100.00
01:53:48 PM     all      0.00      0.00      0.00      0.00      0.00    100.00
01:53:49 PM     all      0.00      0.00      0.00      0.00      0.00    100.00
01:53:50 PM     all      0.00      0.00      0.00      0.00      0.00    100.00
01:53:51 PM     all      0.00      0.00      0.00      0.00      0.00    100.00
```

The output shows the CPU utilization for the system, with the %user, %nice, %system, %iowait, %steal, and %idle metrics displayed.

In the next step, you will explore the various options and flags available with the sar command to analyze different system performance metrics.
