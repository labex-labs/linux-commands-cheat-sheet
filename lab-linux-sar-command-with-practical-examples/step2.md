# Explore sar Command Options and Flags

In this step, you will explore the various options and flags available with the sar command to analyze different system performance metrics.

The sar command provides a wide range of options to collect and display specific system performance data. Some of the commonly used options include:

- `-u`: Display CPU utilization
- `-r`: Display memory utilization
- `-d`: Display disk I/O statistics
- `-n`: Display network statistics
- `-b`: Display I/O and transfer rate statistics
- `-p`: Display partition statistics
- `-q`: Display run queue length and load average

Let's try some of these options:

```
sudo sar -u 1 5
```

This command will display the CPU utilization every 1 second for 5 iterations.

Example output:

```
Linux 5.15.0-1023-aws (ip-172-31-19-178)   01/24/2023      _x86_64_        (2 CPU)

01:55:46 PM     CPU     %user     %nice   %system   %iowait    %steal     %idle
01:55:47 PM     all      0.00      0.00      0.00      0.00      0.00    100.00
01:55:48 PM     all      0.00      0.00      0.00      0.00      0.00    100.00
01:55:49 PM     all      0.00      0.00      0.00      0.00      0.00    100.00
01:55:50 PM     all      0.00      0.00      0.00      0.00      0.00    100.00
01:55:51 PM     all      0.00      0.00      0.00      0.00      0.00    100.00
```

Now, let's try the `-r` option to display memory utilization:

```
sudo sar -r 1 5
```

Example output:

```
Linux 5.15.0-1023-aws (ip-172-31-19-178)   01/24/2023      _x86_64_        (2 CPU)

01:56:46 PM kbmemfree kbmemused  %memused kbbuffers  kbcached  kbcommit   %commit  kbactive   kbinact   kbdirty
01:56:47 PM   1906732    113236     5.61        0     43484    124148      6.11     67620     45616         0
01:56:48 PM   1906732    113236     5.61        0     43484    124148      6.11     67620     45616         0
01:56:49 PM   1906732    113236     5.61        0     43484    124148      6.11     67620     45616         0
01:56:50 PM   1906732    113236     5.61        0     43484    124148      6.11     67620     45616         0
01:56:51 PM   1906732    113236     5.61        0     43484    124148      6.11     67620     45616         0
```

This output shows various memory-related metrics, such as free memory, used memory, buffer, and cache.

You can explore other options like `-d`, `-n`, `-b`, and `-p` to analyze different system performance aspects.

Remember, you can always use the `sar --help` command to get a list of all available options and their descriptions.
