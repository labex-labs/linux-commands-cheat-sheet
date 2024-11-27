# Understand the pinky Command

In this step, we will explore the `pinky` command in Linux, which is a utility that displays information about the currently logged-in users. The `pinky` command is part of the `miscellaneous utilities` category in Linux.

To begin, let's run the `pinky` command in the terminal:

```bash
pinky
```

Example output:

```
Login    Name       TTY         Idle    When    Where
labex    Lab User   pts/0       0:00    13:24   10.0.2.2
```

The output shows the currently logged-in user, their username, the terminal they are using, the idle time, the time they logged in, and their remote host (if applicable).

The `pinky` command can also display additional information about the users, such as their full name, office location, and phone number. To see this information, we can use the `-l` (long format) option:

```bash
pinky -l
```

Example output:

```
Login: labex              Name: Lab User
Directory: /home/labex    Shell: /bin/bash
On since Fri Apr 14 13:24 (UTC) on pts/0 from 10.0.2.2
No mail.
No plan.
```

This provides more detailed information about the logged-in user.

The `pinky` command also supports several other options, such as:

- `-f`: Display the user's full name
- `-h`: Display the user's home directory
- `-i`: Display the user's idle time
- `-p`: Display the user's current process
- `-s`: Display a short format listing

You can explore these options further by running `man pinky` in the terminal.
