# Introduction to hostnamectl Command

In this step, we will explore the `hostnamectl` command, which is a Linux command-line tool used to display and manage the system hostname. The `hostnamectl` command is part of the systemd suite of utilities, and it provides a convenient way to interact with the system's hostname settings.

Let's start by running the `hostnamectl` command without any arguments to see the current system hostname information:

```bash
hostnamectl
```

Example output:

```
   Static hostname: ubuntu
         Icon name: computer-vm
           Chassis: vm
        Machine ID: 9a5c7f4a4f2f4d9c9d9a5c7f4a4f2f4
           Boot ID: 9a5c7f4a4f2f4d9c9d9a5c7f4a4f2f4
    Virtualization: docker
  Operating System: Ubuntu 22.04.1 LTS
            Kernel: Linux 5.15.0-52-generic
      Architecture: x86-64
```

The `hostnamectl` command provides various options to display different aspects of the system hostname, such as the static hostname, icon name, chassis type, machine ID, boot ID, virtualization type, and operating system information.

In the next steps, we will learn how to change the system hostname temporarily and permanently using the `hostnamectl` command.
