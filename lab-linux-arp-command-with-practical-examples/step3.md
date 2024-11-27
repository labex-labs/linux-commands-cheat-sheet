# Manage the ARP Cache Using the arp Command

In this step, you will learn how to manage the ARP cache using the `arp` command.

The ARP cache is used by the operating system to store the mapping between IP addresses and their corresponding MAC addresses. Over time, the ARP cache can become outdated, and it's important to be able to manage it effectively.

Let's explore some common tasks for managing the ARP cache:

```bash
# Display the current ARP cache
labex@ubuntu:~/project$ arp -a
? (192.168.1.1) at 00:11:22:33:44:55 [ether] on eth0
? (192.168.1.200) at aa:bb:cc:dd:ee:ff [ether] on eth0

# Clear the entire ARP cache
labex@ubuntu:~/project$ sudo arp -d -a
labex@ubuntu:~/project$ arp -a
(no entries)

# Add a new entry to the ARP cache
labex@ubuntu:~/project$ sudo arp -s 192.168.1.250 ff:ee:dd:cc:bb:aa
labex@ubuntu:~/project$ arp -a
? (192.168.1.250) at ff:ee:dd:cc:bb:aa [ether] on eth0

# Refresh an existing entry in the ARP cache
labex@ubuntu:~/project$ sudo arp -s 192.168.1.250 00:11:22:33:44:55
labex@ubuntu:~/project$ arp -a
? (192.168.1.250) at 00:11:22:33:44:55 [ether] on eth0
```

Example output:

```
? (192.168.1.1) at 00:11:22:33:44:55 [ether] on eth0
? (192.168.1.200) at aa:bb:cc:dd:ee:ff [ether] on eth0
? (192.168.1.250) at 00:11:22:33:44:55 [ether] on eth0
```

In the examples above, we first display the current ARP cache using the `arp -a` command. Then, we clear the entire ARP cache using the `arp -d -a` command. Next, we add a new entry to the ARP cache for the IP address `192.168.1.250` with the MAC address `ff:ee:dd:cc:bb:aa` using the `arp -s` command. Finally, we refresh an existing entry in the ARP cache for the IP address `192.168.1.250` with a new MAC address `00:11:22:33:44:55`.
