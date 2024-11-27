# Performing a Forced File System Check

In this final step, we will learn how to perform a forced file system check using the `fsck.ext2` command.

Sometimes, the file system may appear to be clean, but it's still a good idea to perform a forced check to ensure that there are no underlying issues. This can be done using the `-f` option.

Let's start by creating another test file system:

```bash
sudo dd if=/dev/zero of=test2.img bs=1M count=100
sudo mkfs.ext2 test2.img
```

Now, let's perform a forced file system check:

```bash
sudo fsck.ext2 -f test2.img
```

Example output:

```
test2.img: clean, 11/25600 files, 7236/102400 blocks
```

As you can see, the file system is reported as clean, even though we didn't intentionally corrupt it.

However, let's say we want to perform a more thorough check, just to be sure. We can use the `-v` option to display verbose output:

```bash
sudo fsck.ext2 -f -v test2.img
```

Example output:

```
test2.img: ***** FILE SYSTEM WAS MODIFIED *****
test2.img: clean, 11/25600 files, 7236/102400 blocks
```

The verbose output shows that the file system was modified during the check, even though no issues were found. This can be useful for troubleshooting and ensuring the integrity of the file system.
