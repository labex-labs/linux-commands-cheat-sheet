# Manage the Mail Queue Using the mailq Command

In this final step, we will learn how to manage the mail queue using the `mailq` command.

First, let's take a look at the current state of the mail queue:

```bash
sudo mailq
```

Example output:

```
-Queue ID- --Size-- ----Arrival Time---- -Sender/Recipient-------
0A1234B6  1234     Fri Jan  1 00:00:00  labex@example.com
                                       user@example.com
0B5678C9  2345     Fri Jan  1 00:00:01  labex@example.com
                                       user2@example.com
```

As you can see, there are two emails currently in the queue.

Now, let's say we want to remove one of the emails from the queue. We can use the `postsuper` command with the `-d` option to delete a specific email:

```bash
sudo postsuper -d 0A1234B6
```

This will remove the email with the queue ID `0A1234B6` from the mail queue.

If you want to retry the delivery of an email that failed to be sent, you can use the `postsuper` command with the `-H` option to hold the email in the queue and then release it later:

```bash
sudo postsuper -H 0B5678C9
```

This will hold the email with the queue ID `0B5678C9`, preventing it from being processed until you're ready to release it. To release the email, use the `postsuper` command with the `-r` option:

```bash
sudo postsuper -r 0B5678C9
```

This will release the email back into the queue for delivery.

By using the `mailq` and `postsuper` commands, you can effectively manage the mail queue on your Linux system, ensuring that emails are being delivered as expected and addressing any issues that may arise.
