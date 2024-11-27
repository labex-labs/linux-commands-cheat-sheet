# Create and Manage User Passwords Using pwconv

In this step, we will learn how to create and manage user passwords using the `pwconv` command.

First, let's create a new user account:

```bash
sudo useradd -m newuser
```

Now, we need to set a password for the new user. We can use the `passwd` command for this:

```bash
sudo passwd newuser
```

You will be prompted to enter and confirm the new password for the `newuser` account.

Example output:

```
Enter new UNIX password:
Retype new UNIX password:
passwd: password updated successfully
```

After setting the password, we can use the `pwconv` command to migrate the password information to the `/etc/shadow` file:

```bash
sudo pwconv
```

Example output:

```
Converting user database...
```

To verify the changes, let's check the `/etc/passwd` and `/etc/shadow` files:

```bash
sudo cat /etc/passwd | grep newuser
sudo cat /etc/shadow | grep newuser
```

Example output:

```
newuser:x:1001:1001::/home/newuser:/bin/bash
newuser:$6$xxxxxxxxxx:18692:0:99999:7:::
```

As you can see, the password field in the `/etc/passwd` file has been replaced with an 'x', and the actual password information is now stored in the `/etc/shadow` file.

You can also use the `pwconv` command to update the password information for existing users. If a user's password is stored in the `/etc/passwd` file, running `pwconv` will migrate the password to the `/etc/shadow` file.
