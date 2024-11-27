# Explore the Linux File System Hierarchy

In this step, you will learn about the Linux file system hierarchy and explore the different directories and their purposes.

The Linux file system is organized in a hierarchical structure, with the root directory (`/`) being the top-level directory. Let's start by exploring the contents of the root directory:

```bash
sudo ls -l /
```

Example output:

```
total 80
drwxr-xr-x  2 root root 4096 Apr 18 06:14 bin
drwxr-xr-x  2 root root 4096 Apr 18 06:14 boot
drwxr-xr-x  5 root root 4096 May 11 05:53 dev
drwxr-xr-x 93 root root 4096 May 11 05:53 etc
drwxr-xr-x  3 root root 4096 Apr 18 06:14 home
lrwxrwxrwx  1 root root   33 Apr 18 06:14 initrd.img -> boot/initrd.img-5.15.0-58-generic
drwxr-xr-x 20 root root 4096 Apr 18 06:14 lib
drwxr-xr-x  2 root root 4096 Apr 18 06:14 lib64
drwxr-xr-x  2 root root 4096 Apr 18 06:14 media
drwxr-xr-x  2 root root 4096 Apr 18 06:14 mnt
drwxr-xr-x  2 root root 4096 Apr 18 06:14 opt
dr-xr-xr-x 99 root root    0 May 11 05:53 proc
drwx------  2 root root 4096 Apr 18 06:14 root
drwxr-xr-x  5 root root 4096 Apr 18 06:14 run
drwxr-xr-x  2 root root 4096 Apr 18 06:14 sbin
drwxr-xr-x  2 root root 4096 Apr 18 06:14 snap
drwxr-xr-x  2 root root 4096 Apr 18 06:14 srv
dr-xr-xr-x 13 root root    0 May 11 05:53 sys
drwxrwxrwt  2 root root 4096 May 11 05:53 tmp
drwxr-xr-x 12 root root 4096 Apr 18 06:14 usr
drwxr-xr-x 14 root root 4096 Apr 18 06:14 var
lrwxrwxrwx  1 root root   30 Apr 18 06:14 vmlinuz -> boot/vmlinuz-5.15.0-58-generic
```

The root directory contains several subdirectories, each with a specific purpose:

- `/bin`: Essential user binaries (commands)
- `/boot`: Boot loader files
- `/dev`: Device files
- `/etc`: System configuration files
- `/home`: User home directories
- `/lib`: Essential shared libraries and kernel modules
- `/media`: Mount point for removable media
- `/mnt`: Mount point for temporary file systems
- `/opt`: Optional software packages
- `/proc`: Virtual file system for kernel and process information
- `/root`: Home directory for the root user
- `/run`: Runtime variable data
- `/sbin`: System binaries (administrative commands)
- `/srv`: Service data
- `/sys`: Virtual file system for kernel objects
- `/tmp`: Temporary files
- `/usr`: Secondary hierarchy for read-only user data
- `/var`: Variable files (logs, spool, cache, etc.)

Explore these directories and their contents to understand the Linux file system hierarchy better.
