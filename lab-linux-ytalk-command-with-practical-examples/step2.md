# Initiate a ytalk Session Between Two Users

In this step, we will learn how to initiate a `ytalk` session between two users on the Ubuntu 22.04 Docker container.

First, open two separate terminal sessions or windows. In the first terminal, start the `ytalk` session as one user:

```bash
ytalk labex
```

This will start the `ytalk` session and wait for the other user to join.

In the second terminal, join the `ytalk` session as the other user:

```bash
ytalk labex
```

You should now see the `ytalk` session established, and you can start communicating between the two users.

To send a message, simply type your message and press Enter. The message will be displayed in both terminals.

Example output:

```
*** Connection established with labex ***
labex: Hello, how are you?
yourusername: I'm doing great, thanks for asking!
labex: That's good to hear. Let's discuss the project details.
yourusername: Sure, what would you like to discuss?
```

To exit the `ytalk` session, type `Ctrl+C` in either terminal.
