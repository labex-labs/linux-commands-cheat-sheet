# Rename a Single File

In this step, you will learn how to use the `mv` command to rename a single file.

First, let's create a file in the `~/project` directory:

```
touch ~/project/original_file.txt
```

Now, let's rename the file using the `mv` command:

```
mv ~/project/original_file.txt ~/project/renamed_file.txt
```

Example output:

```
No output, the file is renamed
```

As you can see, the `mv` command is used to rename the file from `original_file.txt` to `renamed_file.txt`.

Let's verify that the file has been renamed:

```
ls -l ~/project
```

Example output:

```
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 renamed_file.txt
```

The output shows that the file `original_file.txt` has been renamed to `renamed_file.txt`.
