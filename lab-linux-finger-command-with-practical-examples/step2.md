# Displaying User Information with the finger Command

In this step, we will learn how to use the `finger` command to display information about system users.

To start, let's check the current users logged into the system:

```bash
finger
```

Example output:

```
Login     Name       Tty      Idle  Login Time   Office     Office Phone
labex     Labex User pts/0    0      Apr 11 12:34 (192.168.1.100)
```

The `finger` command without any arguments will display information about all users currently logged into the system. This includes the user's login name, real name, terminal, idle time, login time, and other details.

We can also use the `finger` command to display information about a specific user. For example, to get information about the `labex` user, we can run:

```bash
finger labex
```

Example output:

```
Login: labex                             Name: Labex User
Directory: /home/labex                   Shell: /bin/bash
On since Apr 11 12:34 (UTC) on pts/0 from 192.168.1.100
No mail.
No plan.
```

This provides more detailed information about the `labex` user, including their home directory, shell, and login session details.

The `finger` command can be a useful tool for system administrators and users to quickly access user-related information on a Linux system.
