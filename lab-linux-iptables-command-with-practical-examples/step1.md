# Understand the Basics of iptables

In this step, you will learn the fundamental concepts of the iptables firewall in Linux. iptables is a powerful tool that allows you to manage and control network traffic on your system.

First, let's understand the basic structure of iptables. iptables is organized into different tables, each with its own set of built-in chains. The most commonly used tables are:

- `filter`: This table is responsible for filtering network packets, determining whether to allow or block them.
- `nat`: This table is used for network address translation, which is often used for port forwarding or masquerading.
- `mangle`: This table is used for specialized packet alterations, such as setting the Type of Service (ToS) field in the IP header.

Each table contains a set of built-in chains, such as `INPUT`, `OUTPUT`, and `FORWARD`, which correspond to different stages of the packet traversal process.

Now, let's explore some basic iptables commands:

```bash
# List all existing rules
sudo iptables -L

# List rules for a specific table (e.g., filter)
sudo iptables -t filter -L

# Add a new rule to the INPUT chain to block traffic on port 80
sudo iptables -A INPUT -p tcp --dport 80 -j DROP

# Delete a rule from the INPUT chain
sudo iptables -D INPUT 1

# Save the current iptables configuration
sudo iptables-save > ~/project/iptables-rules.txt
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

In the example above, we first list all the existing iptables rules, then add a new rule to the `INPUT` chain to block traffic on port 80, and finally delete the newly added rule. We also save the current iptables configuration to a file for future reference.
