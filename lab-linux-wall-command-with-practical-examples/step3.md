# Schedule a Broadcast Message Using cron

In this step, you will learn how to use the `cron` scheduler to automatically send a broadcast message to all logged-in users at a specific time.

1. Open a terminal on your Ubuntu 22.04 Docker container.

2. Use the `crontab` command to edit the cron schedule for the `labex` user:

   ```
   sudo crontab -e
   ```

3. Add the following line to the crontab file to send a broadcast message every minute:

   ```
   * * * * * sudo wall "This is a scheduled broadcast message."
   ```

   This cron entry will execute the `wall` command every minute to send the message "This is a scheduled broadcast message." to all logged-in users.

4. Save and exit the crontab editor.

5. Wait for a minute and check the terminals of other logged-in users (if any) to verify that the scheduled broadcast message has been sent.

Now, try modifying the cron schedule to send the broadcast message at a different interval (e.g., every 5 minutes, every hour, etc.) and observe the results.
