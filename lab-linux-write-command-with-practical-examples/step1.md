# Understand the Purpose and Syntax of the write Command

In this step, you will learn about the purpose and syntax of the `write` command in Linux. The `write` command allows you to send a message to another user who is currently logged in to the same system.

To use the `write` command, you need to know the username of the user you want to send the message to. The basic syntax of the `write` command is:

```
write username
```

After running this command, you can type your message, and press Enter to send it. To end the message, type Ctrl+D.

Example:

```
$ write labex
Hello, this is a test message.
^D
```

Example output:

```
Message from labex@ubuntu on pts/0 at 14:45 ...
Hello, this is a test message.
EOF
```

In the example above, the `write` command was used to send a message to the user `labex`. The message was "Hello, this is a test message." and the `^D` (Ctrl+D) was used to indicate the end of the message.

The recipient of the message will see the message displayed on their terminal, along with the username and time the message was sent.
