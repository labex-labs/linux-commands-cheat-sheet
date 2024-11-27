# Understand the Purpose and Usage of chkconfig Command

In this step, we will explore the purpose and usage of the `chkconfig` command in Linux. The `chkconfig` command is a powerful tool used to manage the startup behavior of system services.

First, let's understand what the `chkconfig` command does. The `chkconfig` command is used to configure the runlevels at which a service will start or stop. Runlevels in Linux define the state of the system, and different runlevels are used for different purposes, such as booting into a graphical user interface (runlevel 5) or a command-line interface (runlevel 3).

Using the `chkconfig` command, you can enable or disable a service to start automatically at different runlevels. This allows you to control which services are running in your system, improving system performance and security.

Let's start by checking the current status of a service using `chkconfig`:

```bash
sudo chkconfig --list nginx
```

Example output:

```
nginx           0:off   1:off   2:on    3:on    4:on    5:on    6:off
```

This output shows that the `nginx` service is enabled to start automatically in runlevels 2, 3, 4, and 5, and disabled in runlevels 0, 1, and 6.

Now, let's enable the `nginx` service to start at all runlevels:

```bash
sudo chkconfig nginx on
```

Example output:

```
nginx           0:off   1:off   2:on    3:on    4:on    5:on    6:off
```

You can also disable a service to start at all runlevels:

```bash
sudo chkconfig nginx off
```

Example output:

```
nginx           0:off   1:off   2:off   3:off   4:off   5:off   6:off
```

The `chkconfig` command provides a simple and efficient way to manage the startup behavior of system services in Linux. In the next step, we will explore more advanced usage of the `chkconfig` command.
