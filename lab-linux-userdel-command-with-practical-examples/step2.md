# Delete a User Account

In this step, we will learn how to delete a user account using the `userdel` command.

First, let's create a new user account to practice with:

```bash
sudo useradd -m testuser
```

Now, let's delete the `testuser` account:

```bash
sudo userdel testuser
```

Example output:

```
Removing user 'testuser'...
```

By default, the `userdel` command only removes the user account, but not the user's home directory or mail spool. If you want to remove the user's home directory and mail spool, you can use the `-r` option:

```bash
sudo userdel -r testuser
```

Example output:

```
Removing user 'testuser'...
Removing home directory '/home/testuser'...
```

In this example, the `testuser` account and their home directory are removed.
