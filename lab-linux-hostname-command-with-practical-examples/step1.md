# Understand the hostname Command

In this step, we will explore the `hostname` command in Linux, which is used to display or set the system's host name.

First, let's check the current hostname of the system:

```bash
hostname
```

Example output:

```
ubuntu
```

The `hostname` command without any arguments will simply print the current hostname of the system.

You can also use the `hostname` command to get more detailed information about the system:

```bash
hostname -f
hostname -i
hostname -I
```

Example output:

```
ubuntu.localdomain
172.17.0.2
172.17.0.2
```

- `hostname -f` displays the fully qualified domain name (FQDN) of the system.
- `hostname -i` displays the IP address of the system.
- `hostname -I` displays all the IP addresses of the system.

These options provide additional information about the system's hostname and network configuration.
