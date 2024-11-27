# Set and Display the Domain Name

In this step, we will learn how to set and display the domain name of the system using the `domainname` command.

First, let's check the current domain name of the system:

```bash
domainname
```

Example output:

```
example.com
```

As you can see, the domain name is currently set to `example.com`.

Now, let's change the domain name to `mycompany.com`:

```bash
sudo domainname mycompany.com
```

To verify the new domain name, run the `domainname` command again:

```bash
domainname
```

Example output:

```
mycompany.com
```

The domain name has been successfully changed to `mycompany.com`.

It's important to note that the domain name set using the `domainname` command is only valid for the current session. To make the domain name persistent across reboots, you would need to modify the system's network configuration files.
