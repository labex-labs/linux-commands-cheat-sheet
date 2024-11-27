# Understanding the login Command

In this step, we will explore the `login` command in Linux, which is used to log in to the system. The `login` command is a crucial tool for system administrators and users to access their accounts and perform various tasks.

First, let's understand the basic syntax of the `login` command:

```
login [options] [username]
```

The `login` command can be used with various options, such as `-p` to preserve the environment, `-h` to specify the host, and `-f` to force a login without authentication.

To log in as a regular user, simply type `login` and enter your username and password when prompted:

```
$ login
Username: labex
Password:
```

Example output:

```
Last login: Thu Apr 13 10:30:00 UTC 2023 on pts/0
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

labex@ubuntu:~/project$
```

The output shows that the user `labex` has successfully logged in to the system.
