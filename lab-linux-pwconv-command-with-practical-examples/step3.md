# Troubleshoot Password Conversion Issues with pwconv

In this step, we will learn how to troubleshoot any issues that may arise when using the `pwconv` command to convert user passwords.

One common issue that may occur is when the `/etc/shadow` file already exists and contains password information. In this case, running the `pwconv` command may not update the password information as expected.

Let's simulate this scenario:

```bash
# Create a new user account
sudo useradd -m newuser2

# Set a password for the new user
sudo passwd newuser2
```

Now, let's check the `/etc/shadow` file:

```bash
sudo cat /etc/shadow | grep newuser2
```

Example output:

```
newuser2:$6$xxxxxxxxxx:18692:0:99999:7:::
```

As you can see, the password information for the `newuser2` account is already present in the `/etc/shadow` file.

If we now run the `pwconv` command, it will not update the password information:

```bash
sudo pwconv
```

Example output:

```
Converting user database...
```

To troubleshoot this issue, we can use the `pwunconv` command to temporarily revert the password information back to the `/etc/passwd` file, and then run `pwconv` again to migrate the password information correctly.

```bash
# Revert the password information to /etc/passwd
sudo pwunconv

# Convert the password information back to /etc/shadow
sudo pwconv
```

Now, let's verify the changes:

```bash
sudo cat /etc/passwd | grep newuser2
sudo cat /etc/shadow | grep newuser2
```

Example output:

```
newuser2:x:1002:1002::/home/newuser2:/bin/bash
newuser2:$6$xxxxxxxxxx:18692:0:99999:7:::
```

The password information for the `newuser2` account is now correctly stored in the `/etc/shadow` file.

By using the `pwunconv` and `pwconv` commands together, you can troubleshoot any issues related to password conversion and ensure that user passwords are securely stored in the `/etc/shadow` file.
