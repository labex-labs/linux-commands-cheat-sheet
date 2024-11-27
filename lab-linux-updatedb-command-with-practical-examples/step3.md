# Search for Files Using the locate Command

In this step, you will learn how to use the `locate` command to search for files on your system.

The `locate` command uses the locate database, which was updated in the previous step, to quickly search for files. The `locate` command is much faster than using the `find` command, as it doesn't have to scan the entire file system.

Let's start by using the `locate` command to search for a file:

```bash
locate bash
```

Example output:

```
/bin/bash
/etc/bash.bashrc
/etc/skel/.bashrc
/usr/bin/bashbug
/usr/bin/pkexec
/usr/include/bash
/usr/include/bashline.h
/usr/lib/bash
/usr/lib/x86_64-linux-gnu/libbash.so.5
/usr/share/bash-completion
/usr/share/bash-completion/bash_completion
/usr/share/doc/bash
/usr/share/doc/bash/changelog.Debian.gz
/usr/share/doc/bash/copyright
/usr/share/man/man1/bash.1.gz
```

As you can see, the `locate` command returns a list of all the files on the system that contain the word "bash" in their path.

You can also use wildcards with the `locate` command to search for files with a specific pattern:

```bash
locate *.txt
```

This will return a list of all the `.txt` files on the system.

The `locate` command is a powerful tool for quickly searching for files on your system. It's much faster than using the `find` command, especially for large file systems.
