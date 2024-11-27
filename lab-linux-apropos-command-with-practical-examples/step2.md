# Perform Basic Searches with the apropos Command

In this step, we will learn how to perform basic searches using the `apropos` command.

Let's start by searching for commands related to "file compression":

```bash
sudo apropos "file compression"
```

Example output:

```
bzip2(1)              - a block-sorting file compressor, v1.0.8
gzip(1)               - GNU compression utility
lzma(1)               - Compress or decompress .lzma and .xz files
tar(1)                - an archiving utility
xz(1)                 - Compress or decompress .xz and .lzma files
zcat(1)               - file decompression
```

As you can see, the `apropos` command returns a list of commands related to file compression, including `bzip2`, `gzip`, `tar`, and `xz`.

Next, let's search for commands related to "network configuration":

```bash
sudo apropos "network configuration"
```

Example output:

```
ifconfig(8)           - configure a network interface
ip(8)                 - show / manipulate routing, devices, policy routing and tunnels
netstat(8)            - Print network connections, routing tables, interface statistics, masquerade connections, and multicast memberships
nmcli(1)              - command-line tool for controlling NetworkManager
```

This search returns commands related to network configuration, such as `ifconfig`, `ip`, `netstat`, and `nmcli`.

The `apropos` command can be a valuable tool for quickly finding relevant system commands and utilities. In the next step, we'll explore how to customize our searches using regular expressions.
