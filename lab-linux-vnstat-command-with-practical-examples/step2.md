# Monitor Network Traffic Using vnstat

In this step, we will use the vnstat command to monitor network traffic on our Ubuntu 22.04 Docker container.

First, let's check the network interfaces on our system:

```bash
sudo vnstat --iface
```

Example output:

```
Interface:
  eth0
```

The output shows that the network interface we will be monitoring is `eth0`.

Now, let's start monitoring the network traffic using vnstat:

```bash
sudo vnstat -u -i eth0
```

This command will start the vnstat daemon and begin monitoring the `eth0` interface. The `-u` option tells vnstat to update the database in the background.

To view the current network traffic statistics, we can use the following commands:

```bash
sudo vnstat
```

Example output:

```
Database updated: 2023-04-10 12:34:56

eth0:
  rx:  12.45 MiB      tx:  4.32 MiB      total:  16.77 MiB

Monthly Report for eth0
------------------------
Apr '23      rx:  12.45 MiB      tx:  4.32 MiB      total:  16.77 MiB
```

This shows the total received (rx), transmitted (tx), and total traffic for the `eth0` interface.

You can also view more detailed network traffic statistics using the following commands:

```bash
sudo vnstat -d
sudo vnstat -h
sudo vnstat -m
```

These commands will show the daily, hourly, and monthly network traffic statistics, respectively.
