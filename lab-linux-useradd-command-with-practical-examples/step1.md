# Create a New User Account

In this step, you will learn how to create a new user account on your Linux system using the `useradd` command.

First, let's create a new user named `newuser` using the following command:

```bash
sudo useradd -m newuser
```

The `-m` option ensures that a home directory is created for the new user.

Example output:

```
No output, as the command simply creates the user without any feedback.
```

To verify that the user was created, you can use the `id` command:

```bash
id newuser
```

Example output:

```
uid=1001(newuser) gid=1001(newuser) groups=1001(newuser)
```

The output shows that the new user `newuser` has been created with a unique user ID (UID) of 1001 and a primary group ID (GID) of 1001.

Next, you can switch to the new user's context using the `su` command:

```bash
su - newuser
```

Example output:

```
No output, as the command simply switches the user context.
```

Now, you are logged in as the `newuser` user. You can verify this by running the `whoami` command:

```bash
whoami
```

Example output:

```
newuser
```

Great! You have successfully created a new user account on your Linux system.
