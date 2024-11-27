# Create and Switch to a New Group

In this step, you will learn how to create a new group and switch to it using the `newgrp` command.

First, let's create a new group called "project-team":

```bash
# Create a new group
$ sudo groupadd project-team
```

Example output:

```
# No output, but the group has been created
```

Now, let's switch to the new "project-team" group using the `newgrp` command:

```bash
# Switch to the new group
$ newgrp project-team
```

Example output:

```
# No output, but the primary group has been changed
```

To verify that the group has been changed, you can use the `id` command:

```bash
$ id -gn
project-team
```

The output shows that the user's primary group is now "project-team".

When you create a new file or directory in the current shell session, it will be owned by the "project-team" group. This is useful when you need to collaborate on a project with a specific group of users.

Remember that the `newgrp` command only affects the current shell session. If you open a new terminal or log out and log back in, your primary group will revert to the default group set for your user account.
