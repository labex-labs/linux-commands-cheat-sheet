# Manage User Account Properties

In this step, you will learn how to manage various properties of a user account, such as the user's home directory, login shell, and user ID (UID).

First, let's check the current properties of the `newuser` account:

```bash
sudo usermod -L newuser
sudo usermod -c "New User" newuser
sudo usermod -d /home/newuser newuser
sudo usermod -s /bin/bash newuser
```

The `usermod` command is used to modify user account properties. Let's go through the options used in the above commands:

- `-L`: Locks the user's password, preventing the user from logging in.
- `-c "New User"`: Sets the user's comment field (usually the user's full name).
- `-d /home/newuser`: Sets the user's home directory to `/home/newuser`.
- `-s /bin/bash`: Sets the user's login shell to `/bin/bash`.

Now, let's verify the changes:

```bash
id newuser
```

Example output:

```
uid=1001(newuser) gid=1001(newuser) groups=1001(newuser) comment=New User
```

The output shows that the user's properties have been updated as expected.

Next, let's unlock the user's password:

```bash
sudo usermod -U newuser
```

The `-U` option unlocks the user's password, allowing the user to log in again.

Great! You have successfully managed various properties of the `newuser` account.
