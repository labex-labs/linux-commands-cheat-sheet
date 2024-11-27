# Create Symbolic Links Using lndir

In this step, you will learn how to use the `lndir` command to create symbolic links to a directory tree.

First, let's create a new directory structure that we will use for this step:

```bash
mkdir -p ~/project/source2 ~/project/destination2
touch ~/project/source2/file3.txt ~/project/source2/file4.txt
```

Example output:

```
labex@ubuntu:~/project$ mkdir -p ~/project/source2 ~/project/destination2
labex@ubuntu:~/project$ touch ~/project/source2/file3.txt ~/project/source2/file4.txt
```

Now, let's create symbolic links in the `~/project/destination2` directory using the `lndir` command:

```bash
lndir ~/project/source2 ~/project/destination2
```

Example output:

```
labex@ubuntu:~/project$ lndir ~/project/source2 ~/project/destination2
```

To verify that the symbolic links were created, let's list the contents of the `~/project/destination2` directory:

```bash
ls -l ~/project/destination2
```

Example output:

```
labex@ubuntu:~/project$ ls -l ~/project/destination2
total 0
lrwxrwxrwx 1 labex labex 23 Apr 11 12:34 file3.txt -> ../source2/file3.txt
lrwxrwxrwx 1 labex labex 23 Apr 11 12:34 file4.txt -> ../source2/file4.txt
```

As you can see, the `lndir` command has created symbolic links to the files in the `~/project/source2` directory within the `~/project/destination2` directory.
