# Understand the Purpose of the vlock Command

In this step, you will learn about the purpose of the `vlock` command in Linux. The `vlock` command is a utility that allows you to lock the current terminal session, preventing unauthorized access to your system.

The `vlock` command is useful when you need to step away from your computer temporarily, such as during a break or when you need to leave your desk. By locking the terminal, you can ensure that no one can access your system or perform any unauthorized actions while you are away.

Let's explore the `vlock` command in more detail:

```bash
# Run the vlock command to lock the current terminal session
sudo vlock
```

Example output:

```
Terminal is now locked.
```

To unlock the terminal session, you will need to enter your user password.

```bash
# Unlock the terminal session
sudo vlock -u
```

Example output:

```
Terminal is now unlocked.
```

The `vlock` command provides a simple and effective way to secure your terminal session, ensuring that your system remains protected when you are not actively using it.
