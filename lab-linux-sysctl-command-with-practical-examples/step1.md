# Understand the Purpose and Functionality of sysctl Command

In this step, you will learn about the purpose and functionality of the `sysctl` command in Linux. The `sysctl` command is used to view and modify kernel parameters at runtime, allowing you to fine-tune the behavior of your Linux system.

The `sysctl` command allows you to:

- View the current value of a kernel parameter
- Modify the value of a kernel parameter
- Persist kernel parameter changes across system reboots

To view the current value of a kernel parameter, you can use the `sysctl` command with the parameter name:

```
$ sysctl kernel.hostname
kernel.hostname = ubuntu
```

This will display the current value of the `kernel.hostname` parameter.

To modify the value of a kernel parameter, you can use the `-w` or `--write` option:

```
$ sudo sysctl -w kernel.hostname=myhost
kernel.hostname = myhost
```

This will change the hostname of the system to `myhost`.

Example output:

```
$ sysctl kernel.hostname
kernel.hostname = myhost
```

The `sysctl` command provides access to a wide range of kernel parameters, allowing you to customize and optimize your Linux system for specific use cases.
