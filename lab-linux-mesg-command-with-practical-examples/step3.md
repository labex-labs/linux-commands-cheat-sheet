# Restrict Message Receiving Permissions

In this step, we will learn how to restrict message receiving permissions for specific users on the system.

First, let's create a new user named "guest" to demonstrate the permission restriction:

```bash
sudo useradd guest
```

Now, let's switch to the "guest" user:

```bash
sudo su - guest
```

As the "guest" user, let's try to send a message to the "labex" user:

```bash
write labex
```

You will see an error message indicating that the "guest" user is not allowed to send messages.

To restrict message receiving permissions for the "guest" user, we need to use the `mesg` command as the "root" user:

```bash
sudo mesg -g guest n
```

This command sets the message receiving permission for the "guest" user to "n" (no), effectively restricting the user from receiving messages.

Let's verify the permission change:

```bash
sudo mesg -g guest
```

Example output:

```
guest is n
```

The output confirms that the "guest" user is now unable to receive messages.

To allow the "guest" user to receive messages again, use the following command:

```bash
sudo mesg -g guest y
```

Verify the permission change:

```bash
sudo mesg -g guest
```

Example output:

```
guest is y
```

The output confirms that the "guest" user can now receive messages.
