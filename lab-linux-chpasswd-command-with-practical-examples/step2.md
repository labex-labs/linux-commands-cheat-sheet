# Understanding the chpasswd Command

In this step, we will explore the `chpasswd` command in Linux, which allows you to change user passwords in batch mode. The `chpasswd` command reads a list of user and password pairs from standard input and uses this information to update the passwords.

First, let's create a file with a list of user and password pairs:

```
labex:newpassword1
labuser:newpassword2
```

Now, we can use the `chpasswd` command to update the passwords for these users:

```
cat users_passwords.txt | sudo chpasswd
```

Example output:

```
labex:newpassword1
labuser:newpassword2
```

The `chpasswd` command reads the user and password pairs from the `users_passwords.txt` file and updates the passwords accordingly. Note that the passwords are provided in plain text, so this method should be used with caution and only in secure environments.
