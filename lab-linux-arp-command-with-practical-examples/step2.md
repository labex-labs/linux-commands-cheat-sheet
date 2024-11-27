# Explore the Basic Syntax and Options of the arp Command

In this step, you will learn about the basic syntax and options of the `arp` command in Linux.

The basic syntax of the `arp` command is:

```bash
arp [options] [hostname]
```

Here are some common options for the `arp` command:

- `-a` or `--all`: Display the current ARP cache.
- `-d` or `--delete`: Delete an entry from the ARP cache.
- `-s` or `--set`: Manually add an entry to the ARP cache.
- `-i` or `--interface`: Specify the network interface to use.
- `-n` or `--numeric`: Display IP addresses instead of hostnames.

Let's explore some examples of using the `arp` command with these options:

```bash
# Display the ARP cache
labex@ubuntu:~/project$ arp -a
? (192.168.1.1) at 00:11:22:33:44:55 [ether] on eth0
? (192.168.1.100) at 66:77:88:99:aa:bb [ether] on eth0

# Delete an entry from the ARP cache
labex@ubuntu:~/project$ sudo arp -d 192.168.1.100
labex@ubuntu:~/project$ arp -a
? (192.168.1.1) at 00:11:22:33:44:55 [ether] on eth0

# Manually add an entry to the ARP cache
labex@ubuntu:~/project$ sudo arp -s 192.168.1.200 aa:bb:cc:dd:ee:ff
labex@ubuntu:~/project$ arp -a
? (192.168.1.1) at 00:11:22:33:44:55 [ether] on eth0
? (192.168.1.200) at aa:bb:cc:dd:ee:ff [ether] on eth0
```

Example output:

```
? (192.168.1.1) at 00:11:22:33:44:55 [ether] on eth0
? (192.168.1.100) at 66:77:88:99:aa:bb [ether] on eth0
? (192.168.1.200) at aa:bb:cc:dd:ee:ff [ether] on eth0
```

In the examples above, we first display the current ARP cache using the `arp -a` command. Then, we delete an entry for the IP address `192.168.1.100` using the `arp -d` command. Finally, we manually add a new entry for the IP address `192.168.1.200` with the MAC address `aa:bb:cc:dd:ee:ff` using the `arp -s` command.
