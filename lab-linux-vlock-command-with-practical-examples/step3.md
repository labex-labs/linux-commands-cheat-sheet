# Unlock the Terminal Session and Resume Work

In this final step, you will learn how to unlock the terminal session and resume your work.

As you've learned in the previous step, you can lock the terminal session using the `vlock` command. To unlock the terminal and regain access to your system, you will need to enter your user password.

Let's try it out:

```bash
# Lock the terminal session
sudo vlock
```

Example output:

```
Terminal is now locked.
```

Now, let's unlock the terminal session:

```bash
# Unlock the terminal session
sudo vlock -u
```

Example output:

```
Terminal is now unlocked.
```

After entering your user password, the terminal session will be unlocked, and you can resume your work.

The `vlock` command provides a simple and effective way to secure your terminal session when you need to step away from your computer temporarily. By locking the terminal, you can ensure that no one can access your system or perform any unauthorized actions while you are away.
