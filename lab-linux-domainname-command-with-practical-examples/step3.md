# Manage Domain Name Across Network Interfaces

In this step, we will learn how to manage the domain name across multiple network interfaces on the system.

First, let's check the current domain name:

```bash
domainname
```

Example output:

```
mycompany.com
```

Now, let's create a new network interface and set a different domain name for it:

```bash
sudo ip link add dummy0 type dummy
sudo ip link set dummy0 up
sudo domainname -d example.net
```

Here, we created a new dummy network interface named `dummy0` and set the domain name for this interface to `example.net`.

To verify the domain name for the new interface, run the `domainname` command again:

```bash
domainname
```

Example output:

```
example.net
```

As you can see, the domain name has been changed to `example.net`.

To revert the domain name back to the original setting, you can use the following command:

```bash
sudo domainname -F /etc/hostname
```

This will reset the domain name to the value specified in the `/etc/hostname` file.

Let's verify the domain name again:

```bash
domainname
```

Example output:

```
mycompany.com
```

The domain name has been reverted to `mycompany.com`.

This demonstrates how you can manage the domain name across different network interfaces on your system.
