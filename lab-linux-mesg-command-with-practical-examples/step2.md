# Send Messages to Terminal Users

In this step, we will learn how to send messages to other terminal users on the same system.

First, let's check the list of users currently logged into the system using the `who` command:

```bash
who
```

Example output:

```
labex    pts/0        2023-04-18 10:15 (172.17.0.1)
```

To send a message to the user `labex`, use the `write` command followed by the username:

```bash
write labex
```

This will open an interactive message session. Type your message and press Ctrl+D to send it.

Example message:

```
Hello, this is a test message.
```

The message will be displayed on the recipient's terminal.

To send a message to all logged-in users, use the `wall` (write all) command:

```bash
wall "This is a broadcast message to all users."
```

This will display the message on the terminals of all logged-in users.
