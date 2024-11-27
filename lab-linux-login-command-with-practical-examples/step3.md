# Logging in as the Root User

In this step, we will learn how to log in as the root user on the Linux system. The root user is the superuser with the highest level of privileges and access to the system.

To log in as the root user, you can use the `login` command with the `root` username:

```
$ login root
Password:
```

Example output:

```
Welcome to Ubuntu 22.04.2 LTS (GNU/Linux 5.15.0-69-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

This system has been minimized by removing packages and services to reduce
security risks and improve performance. If you need to restore functionality
please use the 'sudo apt-get install -y ubuntu-standard' command.

The programs included with the Ubuntu system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.

root@ubuntu:~/project#
```

The output shows that the user has successfully logged in as the root user. Note that the prompt has changed to `root@ubuntu:~/project#`, indicating the root user.

As a best practice, it is recommended to use the `sudo` command instead of logging in as the root user directly. This helps maintain better security and control over the system.
