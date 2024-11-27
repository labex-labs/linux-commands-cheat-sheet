# Manage Symbolic Links with lndir

In this final step, you will learn how to manage the symbolic links created using the `lndir` command.

First, let's create a new file in the `~/project/source2` directory:

```bash
touch ~/project/source2/file5.txt
```

Example output:

```
labex@ubuntu:~/project$ touch ~/project/source2/file5.txt
```

Now, let's update the symbolic links in the `~/project/destination2` directory to include the new file:

```bash
lndir ~/project/source2 ~/project/destination2
```

Example output:

```
labex@ubuntu:~/project$ lndir ~/project/source2 ~/project/destination2
```

To verify that the symbolic links have been updated, let's list the contents of the `~/project/destination2` directory again:

```bash
ls -l ~/project/destination2
```

Example output:

```
labex@ubuntu:~/project$ ls -l ~/project/destination2
total 0
lrwxrwxrwx 1 labex labex 23 Apr 11 12:34 file3.txt -> ../source2/file3.txt
lrwxrwxrwx 1 labex labex 23 Apr 11 12:34 file4.txt -> ../source2/file4.txt
lrwxrwxrwx 1 labex labex 23 Apr 11 12:34 file5.txt -> ../source2/file5.txt
```

As you can see, the `lndir` command has updated the symbolic links in the `~/project/destination2` directory to include the new `file5.txt` file.

You can also use the `lndir` command to remove symbolic links. For example, to remove the symbolic link to `file4.txt`, you can run the following command:

```bash
rm ~/project/destination2/file4.txt
```

Example output:

```
labex@ubuntu:~/project$ rm ~/project/destination2/file4.txt
```

After running this command, the `file4.txt` symbolic link will be removed from the `~/project/destination2` directory.
