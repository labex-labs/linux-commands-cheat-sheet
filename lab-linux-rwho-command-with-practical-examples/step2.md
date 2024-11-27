# Explore the Output of the rwho Command

In this step, you will explore the output of the `rwho` command in more detail, and learn how to interpret the information it provides.

Let's start by running the `rwho` command again:

```
$ rwho
```

Example output:

```
User     tty    host    login@       idle    where
labex    pts/0  host1   10:15        0:01    host1
john     pts/1  host2   09:30        1:25    host2
jane     pts/2  host3   11:45        0:10    host3
```

As you can see, the output provides information about the users currently logged in to the local and remote systems on the network. Let's break down the different fields:

- `User`: This column displays the username of the logged-in user.
- `tty`: This column shows the terminal device the user is logged in to.
- `host`: This column displays the hostname of the remote system the user is logged in to.
- `login@`: This column shows the time the user logged in.
- `idle`: This column displays the amount of time the user has been idle (no keyboard activity).
- `where`: This column shows the location of the user's terminal.

You can use this information to monitor the activity of users on your network, and to identify any potential issues or unusual behavior.

For example, you might notice that a user has been idle for a long time, or that a user is logged in to a remote system that they don't normally access. This could indicate a potential security issue or a problem with the user's workflow.
