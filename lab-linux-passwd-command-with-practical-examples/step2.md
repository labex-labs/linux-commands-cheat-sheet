# Changing User Password

In this step, we will learn how to change the password for a specific user account in the Linux system.

First, let's create a new user account named `newuser`:

```bash
sudo useradd -m newuser
```

Now, let's change the password for the `newuser` account:

```bash
sudo passwd newuser
```

You will be prompted to enter the new password twice:

```
Enter new UNIX password:
Retype new UNIX password:
passwd: password updated successfully
```

The `passwd` command updates the user's password in the `/etc/shadow` file, which stores the encrypted passwords for all user accounts on the system.

To verify the password change, you can switch to the `newuser` account and try to log in:

```bash
su - newuser
```

You should be able to log in with the new password you just set.
