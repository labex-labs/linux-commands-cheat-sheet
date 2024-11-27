# Introduction to the pppstats Command

In this step, you will learn about the `pppstats` command in Linux, which is used to monitor the statistics of a Point-to-Point Protocol (PPP) interface. The `pppstats` command provides information about the performance and usage of a PPP connection.

First, let's install the `ppp` package, which includes the `pppstats` command:

```bash
sudo apt-get update
sudo apt-get install -y ppp
```

Now, you can run the `pppstats` command to display the current statistics of a PPP interface. By default, it will show the statistics for the first PPP interface found on the system:

```bash
pppstats
```

Example output:

```
  bpf_drops  carrier  bytes_in  bytes_out  pkts_in  pkts_out
         0        1     123456      78901     1234       567
```

The output shows various statistics, including the number of bytes and packets received and transmitted, as well as any dropped packets.

You can also specify a particular PPP interface to monitor by using the `-i` option:

```bash
pppstats -i ppp0
```

This will display the statistics for the `ppp0` interface.

Additionally, you can use the `-r` option to display the statistics in a more readable format:

```bash
pppstats -r
```

Example output:

```
  bytes_in   bytes_out    pkts_in   pkts_out  bpf_drops  carrier
    123456       78901       1234        567           0        1
```

The `pppstats` command can be a useful tool for troubleshooting and monitoring the performance of your PPP connections.
