# Broadcast a Message to All Logged-in Users

In this step, you will learn how to broadcast a message to all users who are currently logged in to the same system.

To broadcast a message, you can use the `wall` (write all) command. This command sends the message you type to the terminals of all logged-in users.

The syntax for the `wall` command is:

```
wall
```

After running this command, you can type your message, and press Enter to send it. To end the message, type Ctrl+D.

Example:

```
$ wall
Attention all users! This is an important announcement.
^D
```

Example output:

```
Broadcast message from labex@ubuntu on pts/0 at 14:55 ...

Attention all users! This is an important announcement.
```

In the example above, the `wall` command was used to broadcast a message to all logged-in users. The message was "Attention all users! This is an important announcement." and the `^D` (Ctrl+D) was used to indicate the end of the message.

All logged-in users will see the message displayed on their terminals, along with the username and time the message was sent.
