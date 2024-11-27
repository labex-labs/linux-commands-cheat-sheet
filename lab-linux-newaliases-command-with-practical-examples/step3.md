# Troubleshoot and Verify Email Alias Configuration

In this final step, you will learn how to troubleshoot and verify the email alias configuration on your system.

First, let's test the email aliases by sending a message to the "support" and "info" aliases:

```bash
echo "Test email" | sudo sendmail -t support@example.com
echo "Test email" | sudo sendmail -t info@example.com
```

These commands will send a test email to the "support" and "info" aliases, respectively.

Next, you can check the system logs to see if the emails were delivered correctly. In a Docker container, the logs are typically stored in the `/var/log/mail.log` file:

```bash
sudo tail -n 20 /var/log/mail.log
```

Look for log entries that indicate the emails were delivered to the correct user (in this case, "labex").

Example log output:

```
Feb 24 12:34:56 container postfix/local[12345]: 123ABC: to=<support@example.com>, relay=local, delay=0.01, delays=0/0/0/0.01, dsn=2.0.0, status=sent (delivered to command: /usr/bin/procmail)
Feb 24 12:34:57 container postfix/local[12345]: 456DEF: to=<info@example.com>, relay=local, delay=0.01, delays=0/0/0/0.01, dsn=2.0.0, status=sent (delivered to command: /usr/bin/procmail)
```

If you don't see any log entries for the emails, or if the logs indicate delivery failures, you may need to troubleshoot further. Check the `/etc/aliases` file to ensure the aliases are configured correctly, and run the `newaliases` command to update the database.
