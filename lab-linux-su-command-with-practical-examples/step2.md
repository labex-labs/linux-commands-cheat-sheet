# Switch User with su Command

In this step, you will learn how to use the `su` command to switch to a different user account.

First, let's switch to the `root` user account:

```bash
sudo su
```

Example output:

```
root@labex:/home/labex/project#
```

Now, let's switch to the `labex` user account:

```bash
su - labex
```

Example output:

```
labex@labex:/home/labex/project$
```

Notice that the prompt has changed to indicate that we are now logged in as the `labex` user.

To switch back to the `root` user, you can simply run the `su` command again:

```bash
su -
```

Example output:

```
root@labex:/home/labex/project#
```

The `su -` command without a specific username will switch to the root user account.

You can also use the `su` command to switch to any other user account on the system, as long as you have the necessary permissions.

For example, to switch to the `ubuntu` user, you can run:

```bash
su - ubuntu
```

Example output:

```
ubuntu@labex:/home/labex/project$
```

Remember, when switching to another user account, you will have the permissions and environment of that user, which may be different from your current user account.
