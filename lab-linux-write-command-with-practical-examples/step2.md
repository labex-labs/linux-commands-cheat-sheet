# Send a Message to a Specific User on the Same System

In this step, you will learn how to send a message to a specific user who is currently logged in to the same system.

To send a message to a specific user, you can use the `write` command followed by the username of the recipient. For example, to send a message to the user `labex`, you would use the following command:

```
write labex
```

After running this command, you can type your message, and press Enter to send it. To end the message, type Ctrl+D.

Example:

```
$ write labex
This is a message for labex.
^D
```

Example output:

```
Message from labex@ubuntu on pts/0 at 14:50 ...
This is a message for labex.
EOF
```

In the example above, the `write` command was used to send a message to the user `labex`. The message was "This is a message for labex." and the `^D` (Ctrl+D) was used to indicate the end of the message.

The recipient of the message will see the message displayed on their terminal, along with the username and time the message was sent.
