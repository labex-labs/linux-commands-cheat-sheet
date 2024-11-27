# Configure Service Startup Behavior Using chkconfig

In this step, we will learn how to configure the startup behavior of system services using the `chkconfig` command.

First, let's check the current status of the `sshd` service:

```bash
sudo chkconfig --list sshd
```

Example output:

```
sshd            0:off   1:off   2:on    3:on    4:on    5:on    6:off
```

This shows that the `sshd` service is currently enabled to start automatically in runlevels 2, 3, 4, and 5, and disabled in runlevels 0, 1, and 6.

Now, let's disable the `sshd` service from starting automatically in runlevel 2:

```bash
sudo chkconfig --level 2 sshd off
```

Example output:

```
sshd            0:off   1:off   2:off   3:on    4:on    5:on    6:off
```

You can also enable the `sshd` service to start automatically in a specific runlevel:

```bash
sudo chkconfig --level 2 sshd on
```

Example output:

```
sshd            0:off   1:off   2:on    3:on    4:on    5:on    6:off
```

Additionally, you can use the `--add` option to add a new service to the `chkconfig` management:

```bash
sudo chkconfig --add my-custom-service
```

This will add the `my-custom-service` to the `chkconfig` management, allowing you to configure its startup behavior.

Remember, the changes you make using `chkconfig` will only affect the startup behavior of the services, not their current running state. If you want to start or stop a service immediately, you should use the appropriate service management commands, such as `sudo service sshd start` or `sudo service sshd stop`.
