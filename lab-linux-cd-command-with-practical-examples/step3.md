# Explore Relative and Absolute Paths with cd Command

In this step, we will explore the difference between relative and absolute paths when using the `cd` command.

Relative Paths:
Relative paths are defined relative to the current working directory. For example, if the current working directory is `/home/labex/project`, then:

```
cd dir1
# This will change the directory to /home/labex/project/dir1
```

Here, `dir1` is a relative path, as it is relative to the current working directory.

Absolute Paths:
Absolute paths are defined starting from the root directory (`/`). For example:

```
cd /home/labex/project/dir1
# This will change the directory to /home/labex/project/dir1
```

Here, `/home/labex/project/dir1` is an absolute path, as it starts from the root directory.

Let's explore the differences between relative and absolute paths:

```
# Current working directory is /home/labex/project
cd dir1
# We are now in /home/labex/project/dir1
cd ..
# We are now back in /home/labex/project
cd /home/labex/project/dir2
# We are now in /home/labex/project/dir2
```

In the above example, we used both relative (`dir1`, `..`) and absolute (`/home/labex/project/dir2`) paths with the `cd` command.

Example output:

```
labex@ubuntu:~/project$ cd dir1
labex@ubuntu:~/project/dir1$ cd ..
labex@ubuntu:~/project$ cd /home/labex/project/dir2
labex@ubuntu:~/project/dir2$
```
