# Analyze User Login Sessions

In this step, we will learn how to analyze user login sessions using the `w` command and other related tools.

First, let's list all the currently logged-in users using the `w` command:

```bash
w
```

Example output:

```
 17:35:01 up 1 day, 23:07,  1 user,  load average: 0.00, 0.00, 0.00
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
user2    pts/0    172.17.0.1       17:30    0.00s  0.01s  0.00s w
```

The output shows that the user `user2` is currently logged in from the terminal `pts/0`.

To get more detailed information about user login sessions, we can use the `who` command:

```bash
who
```

Example output:

```
user2    pts/0        2023-04-18 17:30 (172.17.0.1)
```

The `who` command displays the username, terminal, login time, and the host from which the user logged in.

Another useful command is `last`, which shows a list of the last logged-in users:

```bash
last
```

Example output:

```
user2    pts/0        172.17.0.1      Tue Apr 18 17:30:00 2023 - 17:35:01   (0:05)
reboot   system boot  4.15.0-162-gene Tue Apr 18 17:31:49 2023 - 17:35:01   (0:03)
user1    pts/0        172.17.0.1      Tue Apr 18 17:29:00 2023 - 17:30:00   (0:01)
```

The `last` command shows the username, terminal, host, login time, logout time, and the duration of the session.

By analyzing the output of these commands, you can get a clear understanding of the user login sessions on your system, which can be useful for monitoring and troubleshooting purposes.
