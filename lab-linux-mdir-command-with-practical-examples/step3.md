# Explore Advanced mdir Command Options

In this final step, you will learn about some advanced options available with the `mdir` command.

**Create Directories with Specific Permissions**

You can use the `-m` or `--mode` option to set the permissions for the directories created by `mdir`. For example, to create directories with `rwxr-xr-x` permissions:

```
mdir -m 755 projects/app4 projects/app5
```

Example output:

```
$ ls -ld projects/app4 projects/app5
drwxr-xr-x 2 labex labex 4096 Apr 12 12:34 projects/app4
drwxr-xr-x 2 labex labex 4096 Apr 12 12:34 projects/app5
```

**Create Directories with Timestamps**

You can use the `--date` option to set the creation timestamp for the directories. This can be useful for organizing your files and directories by date. For example, to create directories with the current date:

```
mdir --date=now projects/2023-04-12
```

Example output:

```
$ ls -ld projects/2023-04-12
drwxr-xr-x 2 labex labex 4096 Apr 12 12:34 projects/2023-04-12
```

**Create Directories Recursively**

The `-p` or `--parents` option allows you to create parent directories as needed. This can be useful when creating a complex directory structure. For example:

```
mdir -p projects/dev/frontend projects/dev/backend projects/dev/database
```

This will create the entire directory structure, even if the parent directories (`projects/dev`) don't exist.

Example output:

```
$ tree projects
projects
└── dev
    ├── backend
    ├── database
    └── frontend
```
