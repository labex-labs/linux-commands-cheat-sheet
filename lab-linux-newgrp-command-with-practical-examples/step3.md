# Manage Group Permissions with newgrp

In this final step, you will learn how to manage group permissions using the `newgrp` command.

Let's start by creating a new directory that will be owned by the "project-team" group:

```bash
# Create a new directory
$ mkdir ~/project/shared
$ sudo chown -R labex:project-team ~/project/shared
$ chmod -R 770 ~/project/shared
```

Example output:

```
# No output, but the directory has been created and permissions have been set
```

Now, let's switch to the "project-team" group using `newgrp`:

```bash
$ newgrp project-team
```

Example output:

```
# No output, but the primary group has been changed
```

With the "project-team" group as the primary group, you can now create new files and directories within the `~/project/shared` directory, and they will be owned by the "project-team" group.

```bash
# Create a new file in the shared directory
$ touch ~/project/shared/project-file.txt
```

Example output:

```
# No output, but the file has been created
```

To verify the file ownership and permissions, you can use the `ls -l` command:

```bash
$ ls -l ~/project/shared
total 0
-rw-rw-r-- 1 labex project-team 0 Apr 12 12:34 project-file.txt
```

The output shows that the new file is owned by the "project-team" group, and the group has read and write permissions.

This workflow is useful when you need to collaborate on a project with a specific group of users. By switching to the appropriate group using `newgrp`, you can ensure that new files and directories are owned by the correct group, making it easier to manage permissions and access control.
