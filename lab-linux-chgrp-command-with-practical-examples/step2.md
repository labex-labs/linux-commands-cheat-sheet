# Change the Group Ownership of a File

In this step, we will learn how to change the group ownership of a file using the `chgrp` command.

Let's start by creating a new file in the `~/project` directory:

```
cd ~/project
touch myfile.txt
```

Now, let's check the current group ownership of the `myfile.txt` file:

```
ls -l myfile.txt
```

Example output:

```
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 myfile.txt
```

As you can see, the group ownership of the `myfile.txt` file is set to the `labex` group, which is the default group for the `labex` user.

To change the group ownership of the `myfile.txt` file to the `admin` group, we can use the `chgrp` command:

```
sudo chgrp admin myfile.txt
```

Example output:

```

```

Now, let's verify the group ownership of the `myfile.txt` file:

```
ls -l myfile.txt
```

Example output:

```
-rw-r--r-- 1 labex admin 0 Apr 12 12:34 myfile.txt
```

The output shows that the group ownership of the `myfile.txt` file has been changed to the `admin` group.
