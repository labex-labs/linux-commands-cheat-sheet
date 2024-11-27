# Understand the Difference Between Symbolic and Hard Links

In this step, you will learn the key differences between symbolic (soft) links and hard links in Linux.

First, let's create a hard link to the `file.txt` file:

```bash
ln ~/project/source/file.txt ~/project/hardlink.txt
```

Example output:

```
labex@ubuntu:~/project$ ls -l
total 4
-rw-r--r-- 2 labex labex 14 May 24 12:34 file.txt
lrwxrwxrwx 1 labex labex 22 May 24 12:34 symlink.txt -> /home/labex/project/source/file.txt
-rw-r--r-- 2 labex labex 14 May 24 12:34 hardlink.txt
```

As you can see, the hard link `hardlink.txt` has the same inode number as the original `file.txt` file, indicating that they both refer to the same physical file on the disk.

Now, let's compare the behavior of symbolic and hard links:

1. **Target file deletion**:

   - If you delete the original `file.txt` file, the symbolic link `symlink.txt` will become a "dangling" link, pointing to a non-existent file.
   - If you delete the original `file.txt` file, the hard link `hardlink.txt` will still work, as it refers to the same physical file.

2. **Disk space usage**:

   - Symbolic links do not consume additional disk space, as they only contain the path to the target file.
   - Hard links share the same physical file on the disk, so they do not consume additional disk space.

3. **Cross-device linking**:

   - Symbolic links can point to files or directories across different file systems or devices.
   - Hard links can only be created within the same file system, as they reference the same physical file.

4. **File type**:
   - Symbolic links are a special type of file, identified by the `l` file type in the `ls -l` output.
   - Hard links are regular files, and they are indistinguishable from the original file in the `ls -l` output.

In summary, the key differences are that symbolic links are a reference to the target file, while hard links are an alternative name for the same physical file on the disk. Symbolic links are more flexible but can become dangling, while hard links are more robust but limited to the same file system.
