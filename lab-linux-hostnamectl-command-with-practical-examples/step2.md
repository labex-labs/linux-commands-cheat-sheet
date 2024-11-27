# Displaying System Hostname Information

In this step, we will learn how to display various system hostname information using the `hostnamectl` command.

First, let's display the static hostname of the system:

```bash
hostnamectl status | grep "Static hostname"
```

Example output:

```
Static hostname: ubuntu
```

The `static hostname` is the default hostname assigned to the system, which persists across reboots.

Next, let's display the transient hostname, which is the current hostname of the system:

```bash
hostnamectl status | grep "Transient hostname"
```

Example output:

```
Transient hostname: ubuntu
```

In most cases, the static and transient hostnames will be the same, but the transient hostname can be changed temporarily without affecting the static hostname.

You can also display additional system information using the `hostnamectl` command:

```bash
hostnamectl status
```

This will show you the complete system information, including the icon name, chassis type, machine ID, boot ID, virtualization type, operating system, kernel, and architecture.
