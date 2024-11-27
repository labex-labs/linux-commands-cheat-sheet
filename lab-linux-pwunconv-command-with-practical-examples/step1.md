# Introduction to the pwunconv Command

In this step, we will explore the `pwunconv` command in Linux, which is used to secure user passwords by moving them from the shadow file to the password file.

The `pwunconv` command is part of the shadow password suite, a set of tools used to manage user passwords and account information in Linux. By default, user passwords are stored in the `/etc/shadow` file, which is only readable by the root user. The `pwunconv` command moves the passwords from the `/etc/shadow` file to the `/etc/passwd` file, which is readable by all users.

Let's start by checking the current state of the user password storage:

```bash
sudo cat /etc/shadow
```

Example output:

```
root:$6$rounds=1000000$....:18533:0:99999:7:::
labex:$6$rounds=1000000$....:18533:0:99999:7:::
```

As you can see, the user passwords are stored in the `/etc/shadow` file.

Now, let's use the `pwunconv` command to move the passwords to the `/etc/passwd` file:

```bash
sudo pwunconv
```

Example output:

```
Passwords moved to /etc/passwd.
Shadow passwords now disabled.
```

After running the `pwunconv` command, let's verify the changes:

```bash
sudo cat /etc/passwd
```

Example output:

```
root:x:0:0:root:/root:/bin/bash
labex:x:1000:1000:labex:/home/labex:/bin/bash
```

You can see that the password hashes are now present in the `/etc/passwd` file, and the `/etc/shadow` file is empty.
