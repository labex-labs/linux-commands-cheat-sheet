# Understand the Purpose of the lastb Command

In this step, we will explore the purpose of the `lastb` command in Linux. The `lastb` command is used to display information about failed login attempts on the system.

The `lastb` command provides valuable information that can help system administrators and security professionals identify potential security threats and monitor user activity on the system.

Let's start by running the `lastb` command:

```bash
sudo lastb
```

Example output:

```
labex   tty1                         Fri Apr 14 12:34:56 2023 - Fri Apr 14 12:35:01 2023 (00:00)
root    tty1                         Fri Apr 14 12:33:51 2023 - Fri Apr 14 12:34:01 2023 (00:00)
labex   tty1                         Fri Apr 14 12:32:46 2023 - Fri Apr 14 12:33:01 2023 (00:00)
root    tty1                         Fri Apr 14 12:31:41 2023 - Fri Apr 14 12:32:01 2023 (00:00)
```

The output shows the username, terminal, login time, and duration of failed login attempts. This information can be used to identify patterns of failed login attempts, which may indicate an attempted security breach or unauthorized access to the system.
