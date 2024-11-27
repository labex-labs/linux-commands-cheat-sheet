# Manage Firewall Rules with iptables

In this step, you will learn how to manage firewall rules using iptables. We will cover adding, deleting, and modifying rules, as well as saving the current configuration.

First, let's list the current firewall rules:

```bash
sudo iptables -L
```

Example output:

```
Chain INPUT (policy ACCEPT)
target     prot opt source               destination
ACCEPT     all  --  anywhere             anywhere
ACCEPT     icmp --  anywhere             anywhere
ACCEPT     tcp  --  anywhere             anywhere             state NEW,RELATED,ESTABLISHED
ACCEPT     udp  --  anywhere             anywhere             state NEW,RELATED,ESTABLISHED
DROP       tcp  --  anywhere             anywhere             dport 80
```

Now, let's add a new rule to allow SSH traffic (port 22) on the `INPUT` chain:

```bash
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
```

To delete the rule we added earlier to block port 80, we can use the following command:

```bash
sudo iptables -D INPUT -p tcp --dport 80 -j DROP
```

Finally, let's save the current iptables configuration to a file:

```bash
sudo iptables-save > ~/project/iptables-rules.txt
```

This will save the current iptables rules to the `iptables-rules.txt` file in the `~/project` directory.
