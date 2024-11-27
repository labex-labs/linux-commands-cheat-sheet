# Understand the Purpose and Syntax of the wall Command

In this step, you will learn about the purpose and syntax of the `wall` command in Linux. The `wall` command is used to send a message to all logged-in users on a system.

To understand the purpose of the `wall` command, let's first explore its syntax:

```
wall [message]
```

The `wall` command takes an optional message argument, which will be displayed to all logged-in users. If no message is provided, the `wall` command will prompt the user to enter the message to be sent.

For example, let's send a message to all logged-in users:

```
sudo wall "Attention, all users! This is an important announcement."
```

Example output:

```
Broadcast message from labex@ubuntu (somewhere) (Fri Mar 10 12:34:56 2023):

Attention, all users! This is an important announcement.
```

The `wall` command sends the message to the terminal of each logged-in user, regardless of their current activity or location on the system.
