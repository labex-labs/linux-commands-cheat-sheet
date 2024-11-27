# Analyze Failed Login Attempts Using the lastb Command

In this final step, we will learn how to analyze the information provided by the `lastb` command to identify potential security issues and monitor user activity on the system.

First, let's generate some additional failed login attempts to have more data to analyze:

```bash
# Simulate some failed login attempts
for i in {1..5}; do
  sudo su - -c "echo 'wrong password' | su - labex"
done
```

Now, let's use the `lastb` command to analyze the failed login attempts:

```bash
# Display the last 10 failed login attempts
sudo lastb -n 10
```

Example output:

```
labex   tty1                         Fri Apr 14 12:34:56 2023 - Fri Apr 14 12:35:01 2023 (00:00)
root    tty1                         Fri Apr 14 12:33:51 2023 - Fri Apr 14 12:34:01 2023 (00:00)
labex   tty1                         Fri Apr 14 12:32:46 2023 - Fri Apr 14 12:33:01 2023 (00:00)
root    tty1                         Fri Apr 14 12:31:41 2023 - Fri Apr 14 12:32:01 2023 (00:00)
labex   tty1                         Fri Apr 14 12:30:36 2023 - Fri Apr 14 12:31:01 2023 (00:00)
labex   tty1                         Fri Apr 14 12:29:31 2023 - Fri Apr 14 12:30:01 2023 (00:00)
root    tty1                         Fri Apr 14 12:28:26 2023 - Fri Apr 14 12:29:01 2023 (00:00)
labex   tty1                         Fri Apr 14 12:27:21 2023 - Fri Apr 14 12:28:01 2023 (00:00)
root    tty1                         Fri Apr 14 12:26:16 2023 - Fri Apr 14 12:27:01 2023 (00:00)
labex   tty1                         Fri Apr 14 12:25:11 2023 - Fri Apr 14 12:26:01 2023 (00:00)
```

From the output, we can see that there have been several failed login attempts for both the `labex` and `root` users. This could indicate an attempted security breach or unauthorized access to the system.

To further analyze the failed login attempts, we can use the `lastb` command with additional options:

```bash
# Display the failed login attempts with the hostname or IP address
sudo lastb -a

# Display the failed login attempts in reverse order
sudo lastb -R
```

By analyzing the output of the `lastb` command, you can identify patterns of failed login attempts, such as the usernames, terminals, and time of the attempts. This information can help you take appropriate security measures to protect your system.
