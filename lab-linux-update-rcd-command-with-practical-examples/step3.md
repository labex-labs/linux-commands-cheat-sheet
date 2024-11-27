# Manage Service Startup Priorities with update-rc.d

In this step, you will learn how to manage the startup priorities of services using the `update-rc.d` command.

The startup priority of a service determines the order in which services are started during the boot process. This is important when you have multiple services that depend on each other or need to be started in a specific order.

Let's start by adding another service to our system, the `syslog` service. We can enable it to start automatically at boot using the `update-rc.d` command:

```
sudo update-rc.d rsyslog defaults
```

Now, let's check the startup priorities of the `nginx` and `rsyslog` services:

```
ls -l /etc/rc2.d/ | grep -E 'nginx|rsyslog'
```

Example output:

```
lrwxrwxrwx 1 root root 16 Apr 11 09:42 S20nginx -> ../init.d/nginx
lrwxrwxrwx 1 root root 16 Apr 11 09:42 S19rsyslog -> ../init.d/rsyslog
```

As you can see, the `nginx` service has a higher startup priority (20) than the `rsyslog` service (19). This means that the `nginx` service will start before the `rsyslog` service during the boot process.

Let's change the startup priority of the `rsyslog` service to make it start before the `nginx` service:

```
sudo update-rc.d rsyslog defaults 18
```

The `18` at the end of the command sets the startup priority for the `rsyslog` service to 18, which is lower than the `nginx` service's priority of 20.

Now, let's check the startup priorities again:

```
ls -l /etc/rc2.d/ | grep -E 'nginx|rsyslog'
```

Example output:

```
lrwxrwxrwx 1 root root 16 Apr 11 09:42 S18rsyslog -> ../init.d/rsyslog
lrwxrwxrwx 1 root root 16 Apr 11 09:42 S20nginx -> ../init.d/nginx
```

As you can see, the `rsyslog` service now has a lower startup priority (18) than the `nginx` service (20), ensuring that the `rsyslog` service starts before the `nginx` service during the boot process.
