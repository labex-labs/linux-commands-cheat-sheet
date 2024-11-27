# Understand the rwho Command

In this step, you will learn about the `rwho` command in Linux, which is used to display information about users currently logged in to the local and remote systems on the local network.

The `rwho` command is part of the `rwhod` service, which is a daemon that periodically broadcasts information about the users currently logged in to the local and remote systems on the local network. The `rwho` command retrieves this information and displays it in a readable format.

To use the `rwho` command, simply run the following command in your terminal:

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

The output of the `rwho` command displays the following information:

- `User`: The username of the logged-in user.
- `tty`: The terminal device the user is logged in to.
- `host`: The hostname of the remote system the user is logged in to.
- `login@`: The time the user logged in.
- `idle`: The amount of time the user has been idle (no keyboard activity).
- `where`: The location of the user's terminal.

The `rwho` command can be useful for monitoring the activity of users on your network, as well as for troubleshooting issues related to user logins and remote access.
