# Understand the biff Command

In this step, we will explore the biff command, which is a utility in Linux that allows users to receive notifications when new mail arrives in their mailbox.

The biff command works by monitoring the user's mailbox and displaying a notification message when new mail arrives. This can be useful for users who frequently receive important emails and want to be alerted as soon as they arrive.

To use the biff command, simply run the following command:

```
biff y
```

This will enable biff and start monitoring the user's mailbox for new mail.

Example output:

```
biff y
```

To disable biff, run the following command:

```
biff n
```

Example output:

```
biff n
```

The biff command can also be configured to display a custom notification message when new mail arrives. This can be done by creating a `.biffrc` file in the user's home directory and adding the desired message.

For example, to display the message "You've got mail!" when new mail arrives, create the `.biffrc` file with the following content:

```
You've got mail!
```

Save the file and run the `biff y` command to enable biff with the custom notification.

Example output:

```
biff y
```
