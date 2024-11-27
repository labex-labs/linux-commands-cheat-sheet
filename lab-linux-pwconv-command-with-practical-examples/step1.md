# Understand the Purpose of the pwconv Command

In this step, we will explore the purpose of the `pwconv` command in Linux. The `pwconv` command is used to convert the traditional password file `/etc/passwd` to the shadow password file `/etc/shadow`.

The traditional password file `/etc/passwd` stores user account information, including the username, user ID, group ID, home directory, and shell. However, this file is readable by all users, which poses a security risk as it exposes user passwords in plain text.

To address this security concern, the shadow password file `/etc/shadow` was introduced. This file stores the encrypted user passwords and is only readable by the root user, providing better password protection.

The `pwconv` command is used to migrate the password information from the `/etc/passwd` file to the `/etc/shadow` file, ensuring that user passwords are stored securely.

Let's see how to use the `pwconv` command:

```bash
sudo pwconv
```

Example output:

```
Converting user database...
```

The `pwconv` command will automatically create the `/etc/shadow` file and migrate the password information from the `/etc/passwd` file.

After running the `pwconv` command, you can verify the changes by checking the contents of the `/etc/passwd` and `/etc/shadow` files:

```bash
sudo cat /etc/passwd | head -n 3
sudo cat /etc/shadow | head -n 3
```

Example output:

```
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
```

```
root:$6$xxxxxxxxxx:18692:0:99999:7:::
daemon:*:18692:0:99999:7:::
bin:*:18692:0:99999:7:::
```

As you can see, the password field in the `/etc/passwd` file has been replaced with an 'x', and the actual password information is now stored in the `/etc/shadow` file, which is only accessible to the root user.
