# Manage Service Startup Levels with chkconfig

In this final step, we will learn how to manage the startup levels of system services using the `chkconfig` command.

The `chkconfig` command allows you to control the runlevels at which a service will start or stop. This is particularly useful when you want to ensure that a service is only running in specific runlevels, or when you need to troubleshoot issues related to service startup.

Let's start by checking the current runlevel of our system:

```bash
runlevel
```

Example output:

```
5
```

This shows that our system is currently running in runlevel 5, which is typically the default runlevel for a graphical user interface.

Now, let's say we want to disable the `nginx` service from starting automatically in runlevel 5, but keep it enabled in runlevels 3 and 4. We can do this using the following command:

```bash
sudo chkconfig --level 5 nginx off
```

Example output:

```
nginx           0:off   1:off   2:on    3:on    4:on    5:off   6:off
```

This command disables the `nginx` service in runlevel 5, while keeping it enabled in runlevels 2, 3, and 4.

You can also enable a service in a specific runlevel using the `--level` option:

```bash
sudo chkconfig --level 6 nginx on
```

Example output:

```
nginx           0:off   1:off   2:on    3:on    4:on    5:off   6:on
```

This command enables the `nginx` service to start automatically in runlevel 6, which is typically used for system reboot.

By using the `chkconfig` command with the `--level` option, you can precisely control the startup behavior of your system services, ensuring that they are running only in the desired runlevels.
