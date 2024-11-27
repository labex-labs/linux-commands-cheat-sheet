# Secure Your System with Proper sudo Usage

In this final step, you will learn how to secure your Linux system by using the `sudo` command properly.

While the `sudo` command is a powerful tool, it's important to use it with caution to maintain the security of your system. Here are some best practices for using `sudo` securely:

1. **Limit sudo access**: Avoid granting `sudo` access to all users. Instead, only grant `sudo` privileges to users who need to perform administrative tasks.

```bash
sudo usermod -aG sudo authorized_user
```

2. **Use the `sudo` command judiciously**: Encourage users to only use `sudo` when necessary, and to avoid running unnecessary commands with elevated privileges.

3. **Configure sudo timeout**: By default, `sudo` caches the user's credentials for a certain period of time, allowing them to run multiple commands without re-entering the password. You can configure the timeout period to improve security:

```bash
sudo visudo
```

Add the following line to the file:

```
Defaults timestamp_timeout=5
```

This sets the timeout to 5 minutes. Adjust the value as needed to balance security and convenience.

4. **Audit sudo usage**: Monitor and review the usage of the `sudo` command on your system. You can use the `sudo` log file to track `sudo` activity:

```bash
sudo tail -n 20 /var/log/auth.log
```

5. **Implement multi-factor authentication**: Consider implementing multi-factor authentication (MFA) for `sudo` access to add an extra layer of security.

By following these best practices, you can help ensure that the `sudo` command is used securely and that your Linux system remains protected from unauthorized access or misuse.
