# Understand the userdel Command

In this step, we will learn about the `userdel` command in Linux, which is used to delete user accounts from the system.

The `userdel` command removes the specified user account and related files. By default, it does not remove the user's home directory and mail spool. To remove the home directory and mail spool, you need to use the `-r` option.

Let's explore the basic usage of the `userdel` command:

```bash
sudo userdel [options] username
```

Common options for the `userdel` command:

- `-r`: Remove the home directory and mail spool of the user.
- `-f`: Force the removal of the user account, even if the user is currently logged in.
- `-Z`: Remove the security context of the user.

Example:

```bash
sudo userdel -r testuser
```

Example output:

```
Removing user 'testuser'...
Removing home directory '/home/testuser'...
```

In this example, we delete the user account `testuser` and remove their home directory.
