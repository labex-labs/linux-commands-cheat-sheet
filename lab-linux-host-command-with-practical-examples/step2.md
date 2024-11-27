# Manage Hostnames with the hostnamectl Command

In this step, we will explore the `hostnamectl` command, which provides a more comprehensive way to manage the hostname of the system.

First, let's check the current hostname settings using `hostnamectl`:

```bash
hostnamectl
```

Example output:

```
   Static hostname: ubuntu
         Icon name: computer-vm
       Machine ID: 7b6d7b3f1d9d4c5a8d1a2b3c4d5e6f7
            Boot ID: 9a8b7c6d5e4f3a2b1c0d9e8f7a6b5
   Virtualization: docker
 Operating System: Ubuntu 22.04 LTS
          Kernel: Linux 5.15.0-1023-aws
    Architecture: x86-64
```

The `hostnamectl` command displays various information about the system, including the static hostname, icon name, machine ID, boot ID, virtualization type, operating system, kernel version, and architecture.

Next, let's change the hostname using `hostnamectl`:

```bash
sudo hostnamectl set-hostname new-hostname
```

After running this command, the hostname of the system will be updated to "new-hostname".

To verify the new hostname, run:

```bash
hostnamectl
```

Example output:

```
   Static hostname: new-hostname
         Icon name: computer-vm
       Machine ID: 7b6d7b3f1d9d4c5a8d1a2b3c4d5e6f7
            Boot ID: 9a8b7c6d5e4f3a2b1c0d9e8f7a6b5
   Virtualization: docker
 Operating System: Ubuntu 22.04 LTS
          Kernel: Linux 5.15.0-1023-aws
    Architecture: x86-64
```

As you can see, the static hostname has been updated to "new-hostname".
