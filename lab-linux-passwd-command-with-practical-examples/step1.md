# Understanding the passwd Command

In this step, we will explore the Linux `passwd` command, which is used to change user passwords. The `passwd` command is a fundamental tool for managing user accounts and security in a Linux system.

First, let's check the current user's password status:

```bash
passwd -S labex
```

Example output:

```
labex PS 2023-04-12 0 0 99999 7 -1 (Password set, SHA512 crypt.)
```

This output shows that the `labex` user has a password set, and the password is encrypted using the SHA512 algorithm.

Now, let's change the password for the `labex` user:

```bash
sudo passwd labex
```

You will be prompted to enter the new password twice:

```
Enter new UNIX password:
Retype new UNIX password:
passwd: password updated successfully
```

The `passwd` command updates the user's password in the `/etc/shadow` file, which stores the encrypted passwords for all user accounts on the system.
