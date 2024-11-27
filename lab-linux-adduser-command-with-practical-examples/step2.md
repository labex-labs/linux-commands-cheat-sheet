# Set User Password and Expiration

In this step, we will learn how to set the password and expiration date for a user account.

First, let's switch to the `newuser` account that we created in the previous step:

```bash
su - newuser
```

Now, let's change the password for the `newuser` account using the `passwd` command:

```bash
passwd
```

You will be prompted to enter a new password and confirm it:

```
Changing password for newuser.
New password:
Retype new password:
passwd: password updated successfully
```

Next, we can set an expiration date for the `newuser` account using the `chage` command:

```bash
sudo chage -E 2023-12-31 newuser
```

This will set the account expiration date to December 31, 2023. You can verify the account expiration date using the `chage` command:

```bash
sudo chage -l newuser
```

Example output:

```
Last password change					: Feb 27, 2023
Password expires					: Dec 31, 2023
Password inactive					: never
Account expires						: Dec 31, 2023
Minimum number of days between password change		: 0
Maximum number of days between password change		: 99999
Number of days of warning before password expires	: 7
```

Now the user password has been set, and the account expiration date has been configured.
