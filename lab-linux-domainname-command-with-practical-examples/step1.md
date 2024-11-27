# Understand the domainname Command

In this step, we will explore the Linux `domainname` command, which is used to display or set the domain name of the system. The domain name is a unique identifier for a network or a group of computers that are connected to the same network.

First, let's check the current domain name of the system using the `domainname` command:

```bash
domainname
```

Example output:

```
(none)
```

As you can see, the domain name is currently set to `(none)`, which means that no domain name has been configured for this system.

The `domainname` command can also be used to set the domain name. To do this, we can use the following syntax:

```bash
sudo domainname example.com
```

This will set the domain name of the system to `example.com`. You can verify the new domain name by running the `domainname` command again:

```bash
domainname
```

Example output:

```
example.com
```

Now, the domain name of the system is set to `example.com`.

It's important to note that the domain name set using the `domainname` command is only valid for the current session. To make the domain name persistent across reboots, you would need to modify the system's network configuration files.
