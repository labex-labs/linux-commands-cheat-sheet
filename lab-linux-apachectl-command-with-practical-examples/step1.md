# Understand the apachectl Command

In this step, we will learn about the `apachectl` command, which is a command-line tool used to control the Apache web server. The `apachectl` command provides a convenient way to start, stop, restart, and check the status of the Apache web server.

First, let's check the version of the Apache web server installed on our system:

```bash
sudo apachectl -v
```

Example output:

```
Server version: Apache/2.4.52 (Ubuntu)
Server built:   2022-06-08T12:06:22
```

The `apachectl -v` command displays the version of the Apache web server installed on the system.

Next, let's explore the different options available with the `apachectl` command:

```bash
sudo apachectl -h
```

Example output:

```
Usage: apachectl [option]
Options:
  start            Start the Apache httpd daemon
  stop             Stop the Apache httpd daemon
  restart          Restart the Apache httpd daemon
  graceful         Gracefully restart the Apache httpd daemon
  graceful-stop    Gracefully stop the Apache httpd daemon
  configtest       Run a configuration syntax test
  status           Display the status of the Apache httpd daemon
  fullstatus       Display a full status report from mod_status
  help             Display usage information
  -k start|stop|restart|graceful|graceful-stop  Perform operation
  -v               Print version and then exit
  -V               Print version and built-in modules, then exit
  -t               Run configuration syntax test
  -D name         Define a global variable
  -f file         Specify an alternate ServerRoot file
```

This output shows the various options available with the `apachectl` command, including starting, stopping, restarting, and checking the status of the Apache web server.
