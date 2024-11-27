# Backup and Restore iptables Firewall Rules Using iptables-save

In this step, you will learn how to backup and restore iptables firewall rules using the `iptables-save` and `iptables-restore` commands.

First, let's backup the current iptables firewall rules to a file:

```
sudo iptables-save > iptables-backup.rules
```

This will create a file named `iptables-backup.rules` in the current directory, containing the current iptables firewall configuration.

To restore the firewall rules from the backup file, use the `iptables-restore` command:

```
sudo iptables-restore < iptables-backup.rules
```

This will apply the firewall rules stored in the `iptables-backup.rules` file to the current system.

Example output:

```
$ sudo iptables-restore < iptables-backup.rules
$ sudo iptables -L
Chain INPUT (policy ACCEPT)
target     prot opt source               destination
ACCEPT     all  --  anywhere             anywhere             state RELATED,ESTABLISHED
ACCEPT     icmp --  anywhere             anywhere
ACCEPT     all  --  anywhere             anywhere
DROP       all  --  anywhere             anywhere             state INVALID
ACCEPT     tcp  --  anywhere             anywhere             tcp dpt:22
REJECT     all  --  anywhere             anywhere             reject-with icmp-host-prohibited

Chain FORWARD (policy ACCEPT)
target     prot opt source               destination

Chain OUTPUT (policy ACCEPT)
target     prot opt source               destination
```

The output shows that the firewall rules have been successfully restored from the backup file.
