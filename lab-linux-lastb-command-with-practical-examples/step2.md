# Explore the Syntax and Options of the lastb Command

In this step, we will explore the syntax and available options of the `lastb` command.

The basic syntax of the `lastb` command is:

```bash
sudo lastb [options] [username]
```

Here are some common options for the `lastb` command:

- `-a`: Display the hostname or IP address of the remote host.
- `-d`: Display the details of the login session, including the terminal name and login/logout times.
- `-f`: Display the full username, including the domain name.
- `-n <number>`: Display the last `<number>` of failed login attempts.
- `-p`: Display the PID (process ID) of the login process.
- `-R`: Reverse the order of the output, displaying the most recent failed login attempts first.

Let's try some of these options:

```bash
# Display the last 5 failed login attempts with details
sudo lastb -d -n 5

# Display the failed login attempts with the hostname or IP address
sudo lastb -a

# Reverse the order of the output
sudo lastb -R
```

Example output:

```
labex   tty1                         Fri Apr 14 12:34:56 2023 - Fri Apr 14 12:35:01 2023 (00:00)
root    tty1                         Fri Apr 14 12:33:51 2023 - Fri Apr 14 12:34:01 2023 (00:00)
labex   tty1                         Fri Apr 14 12:32:46 2023 - Fri Apr 14 12:33:01 2023 (00:00)
root    tty1                         Fri Apr 14 12:31:41 2023 - Fri Apr 14 12:32:01 2023 (00:00)
labex   tty1                         Fri Apr 14 12:30:36 2023 - Fri Apr 14 12:31:01 2023 (00:00)
```

The output shows the different information that can be obtained using the various options of the `lastb` command.
