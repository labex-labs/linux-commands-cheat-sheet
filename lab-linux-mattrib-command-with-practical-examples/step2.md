# Modify File Attributes Using the mattrib Command

In this step, we will learn how to use the `mattrib` command to modify file attributes for individual files and directories.

First, let's create a new file and directory to practice with:

```
touch example.txt
mkdir example_dir
```

Now, let's set the read-only attribute on the `example.txt` file:

```
sudo mattrib -r example.txt
```

Example output:

```
Attributes of example.txt changed.
```

You can verify the attribute change by using the `ls -l` command:

```
ls -l example.txt
```

Example output:

```
-r--r--r-- 1 labex labex 0 Apr 12 12:34 example.txt
```

Notice the `r` attribute in the file permissions, indicating the file is read-only.

Next, let's set the hidden attribute on the `example_dir` directory:

```
sudo mattrib -h example_dir
```

Example output:

```
Attributes of example_dir changed.
```

You can verify the attribute change by using the `ls -a` command to list all files, including hidden ones:

```
ls -a example_dir
```

Example output:

```
. .. .example_dir
```

The `example_dir` directory is now hidden and won't be shown in a regular `ls` command.

Finally, let's clear the read-only attribute on `example.txt`:

```
sudo mattrib -c example.txt
```

Example output:

```
Attributes of example.txt changed.
```

Verify the attribute change by checking the file permissions again:

```
ls -l example.txt
```

Example output:

```
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 example.txt
```

The `mattrib` command allows you to easily manage file and directory attributes to control their behavior and visibility on your system.
