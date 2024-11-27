# Customize the Hostname on Ubuntu 22.04

In this final step, we will learn how to manually customize the hostname on an Ubuntu 22.04 system.

First, let's check the current hostname again:

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

To manually change the hostname, we need to edit the `/etc/hostname` file:

```bash
sudo nano /etc/hostname
```

In the file, replace the current hostname with the desired new hostname, for example, "my-custom-hostname":

```
my-custom-hostname
```

Save the file and exit the text editor.

Next, we need to update the `/etc/hosts` file to reflect the new hostname:

```bash
sudo nano /etc/hosts
```

Find the line that starts with "127.0.0.1" and replace the hostname with the new one:

```
127.0.0.1 my-custom-hostname localhost
```

Save the file and exit the text editor.

Finally, let's verify the new hostname:

```bash
hostnamectl
```

Example output:

```
   Static hostname: my-custom-hostname
         Icon name: computer-vm
       Machine ID: 7b6d7b3f1d9d4c5a8d1a2b3c4d5e6f7
            Boot ID: 9a8b7c6d5e4f3a2b1c0d9e8f7a6b5
   Virtualization: docker
 Operating System: Ubuntu 22.04 LTS
          Kernel: Linux 5.15.0-1023-aws
    Architecture: x86-64
```

The hostname has been successfully changed to "my-custom-hostname".
