# Explore the hostname Command

In this step, we will explore the `hostname` command, which is used to display or set the hostname of the system.

First, let's check the current hostname of the system:

```bash
hostname
```

Example output:

```
ubuntu
```

The `hostname` command without any arguments simply prints the current hostname of the system.

Next, let's use the `hostname` command to display more detailed information about the system:

```bash
hostname -a
hostname -d
hostname -f
hostname -i
hostname -s
```

Example output:

```
ubuntu
example.com
ubuntu.example.com
172.17.0.2
ubuntu
```

- `hostname -a`: Displays the alias hostname.
- `hostname -d`: Displays the DNS domain name.
- `hostname -f`: Displays the fully qualified domain name (FQDN).
- `hostname -i`: Displays the network addresses of the host.
- `hostname -s`: Displays the short host name.

As you can see, the `hostname` command provides various options to display different aspects of the system's hostname.
