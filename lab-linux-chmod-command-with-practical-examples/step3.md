# Recursively Changing Permissions of Directories and Files

In this step, we will learn how to use the `chmod` command to recursively change the permissions of directories and all the files within them.

The `-R` (recursive) option of the `chmod` command allows you to apply the specified permissions to a directory and all its subdirectories and files.

Let's create a directory structure and change the permissions recursively:

```
# Create a directory structure
mkdir -p ~/project/documents/reports

# Change permissions recursively
chmod -R u=rwx,g=rx,o=r ~/project/documents

# Verify the permissions
ls -l ~/project
# Output:
# drwxrwxr-x 3 labex labex 4096 Apr 24 12:34 documents
ls -l ~/project/documents
# Output:
# drwxrwxr-x 2 labex labex 4096 Apr 24 12:34 reports
```

In the above example, we first create a directory structure with a parent directory `documents` and a subdirectory `reports`. Then, we use the `chmod -R` command to recursively set the permissions:

- Owner (labex) has read, write, and execute permissions.
- Group (labex) has read and execute permissions.
- Others have read-only permissions.

We verify the permissions using the `ls -l` command, which shows that the permissions have been applied to both the parent directory and the subdirectory.

The recursive option is particularly useful when you need to change the permissions of an entire directory tree, ensuring that all files and subdirectories within the tree have the desired permissions.
