# Customize biff Notification Settings

In this step, we will explore how to customize the biff notification settings to better suit your preferences.

By default, the biff command displays a simple notification message when new mail arrives. However, you can customize the notification message to include additional information, such as the number of new messages or the sender's name.

To customize the biff notification, open the `.biffrc` file in the `~/project` directory using the nano editor:

```
nano ~/.biffrc
```

In the `.biffrc` file, you can add the following variables to customize the notification message:

- `$MAIL`: The path to the user's mailbox file
- `$NEWMAIL`: The number of new messages in the mailbox
- `$SENDER`: The name of the sender of the most recent message

For example, to display a notification message that includes the number of new messages, you can add the following line to the `.biffrc` file:

```
You have $NEWMAIL new message(s)!
```

Save the file and exit the nano editor.

Now, let's test the customized biff notification. Run the following command to simulate new mail arriving:

```
touch ~/project/new_mail.txt
```

You should see the customized notification message displayed in your terminal.

Example output:

```
You have 1 new message(s)!
```

To disable the biff notification, simply run the following command:

```
biff n
```

The biff command will stop monitoring your mailbox for new mail.

Example output:

```
biff n
```
