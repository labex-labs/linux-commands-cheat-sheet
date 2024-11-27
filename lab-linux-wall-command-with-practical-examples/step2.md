# Send a Message to All Logged-in Users

In this step, you will learn how to use the `wall` command to send a message to all logged-in users on the system.

To send a message to all logged-in users, follow these steps:

1. Open a terminal on your Ubuntu 22.04 Docker container.

2. Use the `wall` command to send a message to all logged-in users. For example:

   ```
   sudo wall "This is an important message for all users."
   ```

   Example output:

   ```
   Broadcast message from labex@ubuntu (somewhere) (Fri Mar 10 12:34:56 2023):

   This is an important message for all users.
   ```

   The `wall` command will display the message on the terminal of each logged-in user, regardless of their current activity or location on the system.

3. Verify that the message was successfully sent by checking the terminals of other logged-in users (if any).

Now, try sending a different message using the `wall` command and observe the result.
