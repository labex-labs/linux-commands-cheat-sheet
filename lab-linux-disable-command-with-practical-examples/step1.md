# Understand the Purpose of the disable Command

In this step, you will learn about the purpose of the `disable` command in Linux. The `disable` command is used to disable a service or program, preventing it from starting automatically at system boot.

Disabling a service can be useful in various scenarios, such as:

- Troubleshooting issues: If a service is causing problems, you can disable it temporarily to isolate the issue.
- Optimizing system performance: Disabling unnecessary services can free up system resources and improve overall performance.
- Security: Disabling unused services can reduce the attack surface and improve the security of your system.

To understand the purpose of the `disable` command, let's explore a practical example:

```bash
sudo disable apache2
```

Example output:

```
Disabling system service apache2.service.
```

In this example, we used the `disable` command to disable the Apache web server. Once disabled, the Apache service will no longer start automatically at system boot.
