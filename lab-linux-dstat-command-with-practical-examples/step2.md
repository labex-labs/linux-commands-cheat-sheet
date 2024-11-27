# Monitoring CPU Utilization with dstat

In this step, we will learn how to use the dstat command to monitor the CPU utilization on our Linux system.

First, let's run the dstat command with the `--cpu` option to display detailed CPU statistics:

```bash
dstat --cpu
```

Example output:

```
----total-cpu-usage----
usr sys idl wai hiq siq
  3   1  96   0   0   0
  3   1  96   0   0   0
  3   1  96   0   0   0
  3   1  96   0   0   0
  3   1  96   0   0   0
```

The output shows the percentage of CPU utilization for user processes (`usr`), system processes (`sys`), idle time (`idl`), waiting for I/O (`wai`), hardware interrupts (`hiq`), and software interrupts (`siq`).

You can also use the `--cpu-adv` option to get more detailed CPU statistics:

```bash
dstat --cpu-adv
```

Example output:

```
--cpu-usr-- --cpu-sys-- --cpu-idl-- --cpu-wai-- --cpu-hiq-- --cpu-siq--
  3.00      1.00       96.00       0.00       0.00       0.00
  3.00      1.00       96.00       0.00       0.00       0.00
  3.00      1.00       96.00       0.00       0.00       0.00
  3.00      1.00       96.00       0.00       0.00       0.00
  3.00      1.00       96.00       0.00       0.00       0.00
```

This provides a more detailed breakdown of CPU utilization, including user, system, idle, wait, hardware interrupts, and software interrupts.

You can also combine the `--cpu` and `--cpu-adv` options to get both the summary and detailed CPU statistics:

```bash
dstat --cpu --cpu-adv
```

Example output:

```
----total-cpu-usage---- --cpu-usr-- --cpu-sys-- --cpu-idl-- --cpu-wai-- --cpu-hiq-- --cpu-siq--
usr sys idl wai hiq siq
  3   1  96   0   0   0   3.00      1.00       96.00       0.00       0.00       0.00
  3   1  96   0   0   0   3.00      1.00       96.00       0.00       0.00       0.00
  3   1  96   0   0   0   3.00      1.00       96.00       0.00       0.00       0.00
  3   1  96   0   0   0   3.00      1.00       96.00       0.00       0.00       0.00
  3   1  96   0   0   0   3.00      1.00       96.00       0.00       0.00       0.00
```

This provides a comprehensive view of the system's CPU utilization, allowing you to quickly identify any potential CPU bottlenecks or performance issues.
