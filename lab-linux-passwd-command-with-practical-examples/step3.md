# Resetting Forgotten Password

In this step, we will learn how to reset the password for a user account when the user has forgotten their password.

First, let's create another user account named `forgottenuser`:

```bash
sudo useradd -m forgottenuser
```

Now, let's try to reset the password for the `forgottenuser` account:

```bash
sudo passwd forgottenuser
```

You will be prompted to enter the new password twice:

```
Enter new UNIX password:
Retype new UNIX password:
passwd: password updated successfully
```

The `passwd` command updates the user's password in the `/etc/shadow` file, which stores the encrypted passwords for all user accounts on the system.

To verify the password reset, you can switch to the `forgottenuser` account and try to log in:

```bash
su - forgottenuser
```

You should be able to log in with the new password you just set.
