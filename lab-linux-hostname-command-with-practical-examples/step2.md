# Change the Hostname Temporarily

In this step, we will learn how to change the hostname of the system temporarily.

To change the hostname temporarily, we can use the `hostname` command with the new hostname as an argument:

```bash
sudo hostname new-hostname
```

Example output:

```
ubuntu
```

After running this command, the hostname of the system will be changed to `new-hostname`. However, this change will only last until the system is rebooted. The next time the system boots up, the hostname will revert back to the original value.

Let's verify the new hostname:

```bash
hostname
```

Example output:

```
new-hostname
```

As you can see, the hostname has been successfully changed to `new-hostname`.
