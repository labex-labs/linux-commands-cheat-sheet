# Configure biff to Receive Notifications

In this step, we will configure the biff command to receive notifications when new mail arrives in your mailbox.

First, let's verify that the biff command is enabled. Run the following command:

```
biff
```

The output should show "y", indicating that biff is enabled.

Next, we'll create a custom notification message. Open the `.biffrc` file in the `~/project` directory using the nano editor:

```
nano ~/.biffrc
```

Add the following line to the file:

```
You have new mail!
```

Save the file and exit the nano editor.

Now, let's test the biff notification. Run the following command to simulate new mail arriving:

```
touch ~/project/new_mail.txt
```

You should see the notification message "You have new mail!" displayed in your terminal.

Example output:

```
You have new mail!
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
