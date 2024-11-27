# Understand the su Command

In this step, you will learn about the `su` command in Linux, which stands for "switch user". The `su` command allows you to switch to another user account, typically a user with elevated privileges, such as the root user.

To understand the basic usage of the `su` command, let's start with a simple example:

```bash
sudo su
```

Example output:

```
root@labex:/home/labex/project#
```

In the example above, we used the `sudo` command to switch to the root user account. The `root` user has the highest level of privileges in the Linux system and can perform any operation.

The `su` command can also be used to switch to a specific user account, rather than the root user. For example, to switch to the `labex` user, you can run:

```bash
su - labex
```

Example output:

```
labex@labex:/home/labex/project$
```

Notice that the prompt has changed to indicate that we are now logged in as the `labex` user.

The `-` option in the `su` command is important, as it ensures that the new user's environment is loaded, including the user's shell, environment variables, and home directory.

Without the `-` option, the `su` command will only change the user, but the environment will remain the same as the previous user's environment.
