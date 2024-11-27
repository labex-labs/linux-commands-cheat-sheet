# Manage System Services Using the service Command

In this step, we will learn how to use the `service` command to manage system services, including starting, stopping, restarting, and checking the status of services.

First, let's list all the available services on the system:

```
sudo service --status-all
```

Example output:

```
 [ + ]  acpid
 [ - ]  apache2
 [ + ]  apparmor
 [ + ]  atd
 [ + ]  cron
 [ + ]  dbus
 [ + ]  getty
 [ + ]  networking
 [ + ]  rsyslog
 [ + ]  ssh
 [ + ]  ufw
```

The `+` symbol indicates that the service is running, while the `-` symbol indicates that the service is stopped.

Now, let's start the Apache web server service:

```
sudo service apache2 start
```

Example output:

```
Starting Apache httpd web server: apache2.
```

To check the status of the Apache service:

```
sudo service apache2 status
```

Example output:

```
Apache2 is running.
```

If you want to stop the Apache service:

```
sudo service apache2 stop
```

Example output:

```
Stopping Apache httpd web server: apache2.
```

To restart the Apache service:

```
sudo service apache2 restart
```

Example output:

```
Restarting Apache httpd web server: apache2.
```

The `service` command provides a consistent and standardized way to manage system services, regardless of the underlying service management mechanism (e.g., `systemd`, `init.d`).
