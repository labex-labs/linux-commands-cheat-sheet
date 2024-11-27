# Monitoring PPP Interface Statistics

In this step, you will learn how to use the `pppstats` command to monitor the statistics of a PPP interface in real-time.

First, let's start a PPP connection using the `pon` command. This will create a PPP interface that we can monitor:

```bash
sudo pon
```

Now, you can use the `pppstats` command to continuously display the statistics of the PPP interface:

```bash
pppstats -r -i ppp0 -t 2
```

This will show the statistics every 2 seconds for the `ppp0` interface. The `-r` option displays the statistics in a more readable format, and the `-t` option sets the update interval.

Example output:

```
  bytes_in   bytes_out    pkts_in   pkts_out  bpf_drops  carrier
    123456       78901       1234        567           0        1
    234567      123456       2345       1234           0        1
    345678      234567       3456       2345           0        1
```

You can see the number of bytes and packets received and transmitted, as well as any dropped packets and carrier changes.

To stop the PPP connection, use the `poff` command:

```bash
sudo poff
```

This will terminate the PPP connection and stop the `pppstats` monitoring.
