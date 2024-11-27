# Configure Services to Start Automatically at Boot

In this step, you will learn how to use the `update-rc.d` command to configure services to start automatically at system boot.

Let's start by checking the current status of the `nginx` service. We can use the `service` command to do this:

```
sudo service nginx status
```

Example output:

```
nginx is not running
```

As you can see, the `nginx` service is not currently running. Let's enable it to start automatically at boot using the `update-rc.d` command:

```
sudo update-rc.d nginx defaults
```

This command will create the necessary symbolic links in the `/etc/rc*.d/` directories to ensure that the `nginx` service starts automatically when the system boots up.

To verify that the `nginx` service is now enabled to start at boot, we can check the contents of the `/etc/rc2.d/` directory:

```
ls -l /etc/rc2.d/ | grep nginx
```

Example output:

```
lrwxrwxrwx 1 root root 16 Apr 11 09:42 S20nginx -> ../init.d/nginx
```

The output shows that the `nginx` service has been added to the `/etc/rc2.d/` directory with a startup priority of 20.

Now, let's try rebooting the system and checking the status of the `nginx` service again:

```
sudo reboot
```

After the system has rebooted, log back in and check the `nginx` service status:

```
sudo service nginx status
```

Example output:

```
nginx is running
```

As you can see, the `nginx` service is now running and has been configured to start automatically at system boot.
