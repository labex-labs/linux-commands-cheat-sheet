# Assign a Password to the New User

In this step, you will learn how to assign a password to the new user account you created in the previous step.

First, switch back to the `labex` user, who has sudo privileges:

```bash
exit
```

Now, use the `passwd` command to set a password for the `newuser` account:

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

To verify that the password has been set, you can try to switch to the `newuser` account using the `su` command:

```bash
su - newuser
```

You will be prompted to enter the password you just set. After entering the correct password, you should be logged in as the `newuser` user.

Example output:

```
Password:
[newuser@labex-host ~]$
```

Great! You have successfully assigned a password to the new user account.
