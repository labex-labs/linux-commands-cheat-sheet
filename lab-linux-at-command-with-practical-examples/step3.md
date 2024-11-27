# Understand and Use Linux Permissions

In this step, you will learn about Linux file and directory permissions and how to manage them.

Linux uses a permission system to control access to files and directories. Each file and directory has three types of permissions: read, write, and execute. These permissions can be assigned to the file/directory owner, the group the file/directory belongs to, and all other users.

Let's create a new file and explore its permissions:

```bash
cd ~/project
touch my_file.txt
ls -l my_file.txt
```

Example output:

```
-rw-r--r-- 1 labex labex 0 May 11 06:10 my_file.txt
```

The permissions are displayed as a string of 10 characters, where:

- The first character indicates the file type (- for regular file, d for directory)
- The next 3 characters indicate the owner's permissions (read, write, execute)
- The next 3 characters indicate the group's permissions
- The final 3 characters indicate the permissions for all other users

To change the permissions, you can use the `chmod` command. For example, to make the file executable for the owner:

```bash
chmod u+x my_file.txt
ls -l my_file.txt
```

Example output:

```
-rwxr--r-- 1 labex labex 0 May 11 06:10 my_file.txt
```

You can also use numeric values to set permissions. The values are:

- 4 for read
- 2 for write
- 1 for execute
- 0 for no permission

For example, to set the permissions to read-write-execute for the owner, read-execute for the group, and read-only for others:

```bash
chmod 754 my_file.txt
ls -l my_file.txt
```

Example output:

```
-rwxr-xr- 1 labex labex 0 May 11 06:10 my_file.txt
```

Finally, let's create a directory and set its permissions:

```bash
mkdir my_directory
chmod 755 my_directory
ls -ld my_directory
```

Example output:

```
drwxr-xr-x 2 labex labex 4096 May 11 06:10 my_directory
```

The `755` permissions allow the owner to read, write, and execute, while the group and others can only read and execute.
