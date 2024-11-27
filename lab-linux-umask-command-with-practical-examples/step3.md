# Applying umask in Different Scenarios

In this step, we will explore how to apply the `umask` command in different scenarios to manage file and directory permissions effectively.

## Scenario 1: Securing Sensitive Files

Imagine you have a sensitive file that you want to ensure only the owner has read and write access to. You can achieve this by setting a more restrictive `umask` value:

```bash
umask 0077
touch ~/project/sensitive_file.txt
```

Example output:

```
-rw------- 1 labex labex 0 Apr 12 12:36 sensitive_file.txt
```

The `umask` value of `0077` ensures that the new file has permissions of `0700` (rwx------), which means only the owner has read and write access.

## Scenario 2: Allowing Group Collaboration

In a scenario where you want to create files and directories that are accessible to a specific group, you can set the `umask` value accordingly:

```bash
umask 0007
mkdir ~/project/shared_directory
touch ~/project/shared_file.txt
```

Example output:

```
drwxrwx--- 2 labex labex 4096 Apr 12 12:37 shared_directory
-rw-rw---- 1 labex labex    0 Apr 12 12:37 shared_file.txt
```

The `umask` value of `0007` ensures that the new directory has permissions of `0770` (rwxrwx---) and the new file has permissions of `0660` (rw-rw----), allowing members of the group to access and modify the files and directories.

Remember, the `umask` value is subtracted from the default permissions (`0777` for files and `0755` for directories) to determine the final permissions. Experiment with different `umask` values to understand how they affect the default permissions.
