# Securing User Passwords with pwunconv

In this step, we will explore how the `pwunconv` command can be used to enhance the security of user passwords in your Linux system.

After moving the passwords from the `/etc/shadow` file to the `/etc/passwd` file in the previous step, the next step is to secure the user passwords by disabling the shadow password system.

Run the following command to disable the shadow password system:

```bash
sudo pwconv
```

Example output:

```
Shadow passwords now enabled.
Passwords moved to /etc/shadow.
```

As you can see, the `pwconv` command moves the passwords back to the `/etc/shadow` file, where they are only accessible to the root user.

Let's verify the changes:

```bash
sudo cat /etc/shadow
```

Example output:

```
root:$6$rounds=1000000$....:18533:0:99999:7:::
labex:$6$rounds=1000000$....:18533:0:99999:7:::
```

The user passwords are now securely stored in the `/etc/shadow` file, which is only readable by the root user.

By using the `pwunconv` and `pwconv` commands, you can effectively manage the security of user passwords in your Linux system. The `pwunconv` command allows you to temporarily move the passwords to the `/etc/passwd` file for maintenance or troubleshooting purposes, while the `pwconv` command ensures that the passwords are securely stored in the `/etc/shadow` file.
