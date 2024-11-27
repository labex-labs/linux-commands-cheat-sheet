# Changing File Permissions Using the chmod Command

In this step, we will learn how to use the `chmod` command to change the permissions of files and directories in Linux.

The `chmod` command allows you to modify the read, write, and execute permissions for the owner, group, and others. The syntax for the `chmod` command is:

```
chmod [options] mode file
```

Here, `mode` represents the new permissions you want to set. You can use either symbolic mode or numeric mode to change permissions.

**Symbolic Mode:**

- `u` represents the owner
- `g` represents the group
- `o` represents others
- `a` represents all (owner, group, and others)
- `+` adds the specified permissions
- `-` removes the specified permissions
- `=` sets the specified permissions

For example, to give the owner read and write permissions, the group read permissions, and remove all permissions for others, you would use:

```
chmod u=rw,g=r,o-rwx example.txt
```

**Numeric Mode:**

- Each permission (read, write, execute) is assigned a number: 4 for read, 2 for write, and 1 for execute.
- The permissions for owner, group, and others are represented by a 3-digit number.

For example, to set the permissions to `rw-r--r--` (owner has read and write, group has read, others have read), you would use:

```
chmod 644 example.txt
```

Let's try changing the permissions of a file using both symbolic and numeric modes:

```
# Create a new file
touch example.txt

# Change permissions using symbolic mode
chmod u=rw,g=r,o-rwx example.txt
ls -l example.txt
# Output: -rw-r-----

# Change permissions using numeric mode
chmod 644 example.txt
ls -l example.txt
# Output: -rw-r--r--
```

In the above example, we first create a new file `example.txt`, then use the `chmod` command to change the permissions. We verify the changes using the `ls -l` command.
