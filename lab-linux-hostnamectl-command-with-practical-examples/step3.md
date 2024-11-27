# Changing System Hostname Temporarily and Permanently

In this step, we will learn how to change the system hostname both temporarily and permanently using the `hostnamectl` command.

To change the hostname temporarily, use the following command:

```bash
sudo hostnamectl set-hostname new-hostname
```

Replace `new-hostname` with the desired hostname. This will change the transient hostname immediately, but the change will not persist after a reboot.

To verify the temporary hostname change:

```bash
hostnamectl status | grep "Transient hostname"
```

Example output:

```
Transient hostname: new-hostname
```

To change the hostname permanently, we need to update both the static and transient hostnames:

```bash
sudo hostnamectl set-hostname permanent-hostname
```

This will update the static hostname, which will be used as the default hostname after a reboot.

To verify the permanent hostname change:

```bash
hostnamectl status | grep "Static hostname"
hostnamectl status | grep "Transient hostname"
```

Example output:

```
Static hostname: permanent-hostname
Transient hostname: permanent-hostname
```

Now, the system hostname has been changed both temporarily and permanently.
