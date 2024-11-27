# Explore Advanced Options and Scenarios of the mdel Command

In this final step, you will explore some advanced options and scenarios of the `mdel` command.

One useful option is the `-m` flag, which allows you to set the permissions of the created directories. For example, to create a directory with 755 permissions:

```
mdel -m 755 dir7
```

Example output:

```
~/project/dir7
```

You can verify the permissions using the `ls -l` command:

```
ls -ld ~/project/dir7
```

Example output:

```
drwxr-xr-x 2 labex labex 4096 Apr 12 12:34 /home/labex/project/dir7
```

Another advanced scenario is creating directories with spaces in the names. To do this, you can use quotes around the directory names:

```
mdel "dir 8" "dir 9"
```

Example output:

```
~/project/dir 8
~/project/dir 9
```

You can also use the `mdel` command to create directories in different locations, not just in the current working directory. To do this, simply provide the full path to the directory you want to create:

```
mdel /tmp/dir10 /tmp/dir11
```

Example output:

```
/tmp/dir10
/tmp/dir11
```

In this final step, you have learned how to use advanced options and scenarios of the `mdel` command to create directories with specific permissions and names, as well as in different locations.
