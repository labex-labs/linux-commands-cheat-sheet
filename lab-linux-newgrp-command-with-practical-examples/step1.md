# Understand the newgrp Command

In this step, you will learn about the `newgrp` command in Linux, which allows you to change the primary group membership of the current shell session.

The `newgrp` command is used to switch the current user's primary group to a different group. This is useful when you need to perform actions that require the permissions of a different group.

Let's start by exploring the basic usage of the `newgrp` command:

```bash
# Check the current user's primary group
$ id -gn
labex

# Use newgrp to switch to a different group
$ sudo newgrp developers
```

Example output:

```
# No output, but the primary group has been changed
```

After running `newgrp developers`, the user's primary group is now set to the `developers` group. This means that any new files or directories created in the current shell session will be owned by the `developers` group.

To verify the group change, you can use the `id` command again:

```bash
$ id -gn
developers
```

The `newgrp` command is particularly useful when you need to perform tasks that require the permissions of a specific group. For example, if you're working on a project that requires access to a shared directory owned by the `developers` group, you can use `newgrp` to switch to that group and gain the necessary permissions.

It's important to note that the `newgrp` command only affects the current shell session. If you open a new terminal or log out and log back in, your primary group will revert to the default group set for your user account.
