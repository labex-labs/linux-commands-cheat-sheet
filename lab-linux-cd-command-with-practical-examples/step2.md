# Navigate the File System Using cd Command

In this step, we will learn how to navigate the file system using the `cd` command.

Let's start by creating a few directories and files in the `~/project` directory:

```
cd ~/project
mkdir dir1 dir2 dir3
touch file1.txt file2.txt
```

Now, let's navigate to the different directories using the `cd` command:

```
cd dir1
# We are now in ~/project/dir1
cd ../dir2
# We are now in ~/project/dir2
cd ../../dir3
# We are now in ~/project/dir3
```

Here, we used the following techniques:

- `cd dir1` to navigate to the `dir1` directory, which is a subdirectory of the current directory (`~/project`).
- `cd ../dir2` to navigate to the `dir2` directory, which is a sibling directory of `dir1`. The `..` refers to the parent directory.
- `cd ../../dir3` to navigate to the `dir3` directory, which is two levels up from the current directory (`~/project/dir3`).

You can also use absolute paths with the `cd` command:

```
cd /home/labex/project/dir1
# We are now in /home/labex/project/dir1
```

Example output:

```
labex@ubuntu:~/project$ mkdir dir1 dir2 dir3
labex@ubuntu:~/project$ touch file1.txt file2.txt
labex@ubuntu:~/project$ cd dir1
labex@ubuntu:~/project/dir1$ cd ../dir2
labex@ubuntu:~/project/dir2$ cd ../../dir3
labex@ubuntu:~/project/dir3$ cd /home/labex/project/dir1
labex@ubuntu:/home/labex/project/dir1$
```
