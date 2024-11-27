# Understand the accton Command

In this step, we will explore the `accton` command in Linux, which is used to enable or disable accounting of process data. The `accton` command allows you to start or stop the collection of accounting information for processes running on your system.

To begin, let's check the current status of the accounting system:

```bash
sudo accton
```

Example output:

```
accton: accounting not enabled
```

As you can see, the accounting system is currently disabled. We can enable it by running the following command:

```bash
sudo accton /var/log/account/pacct
```

This command starts the accounting system and stores the accounting data in the `/var/log/account/pacct` file.

To verify that the accounting system is now enabled, run the `accton` command again:

```bash
sudo accton
```

Example output:

```
accton: accounting enabled
```

The `accton` command without any arguments displays the current status of the accounting system.

To stop the accounting system, simply run:

```bash
sudo accton
```

This will disable the accounting system and stop collecting process data.
