# Understand the Purpose and Syntax of the mattrib Command

In this step, we will explore the purpose and syntax of the `mattrib` command in Linux. The `mattrib` command is used to modify file attributes, which are metadata associated with a file that describe its characteristics and behavior.

First, let's understand the basic syntax of the `mattrib` command:

```
mattrib [options] filename
```

The available options for the `mattrib` command include:

- `-a`: Set the archive attribute
- `-c`: Clear the archive attribute
- `-r`: Set the read-only attribute
- `-h`: Set the hidden attribute
- `-s`: Set the system attribute
- `-i`: Set the immutable attribute
- `-d`: Clear the directory attribute

For example, to set the read-only attribute on a file named `example.txt`, you would run:

```
sudo mattrib -r example.txt
```

Example output:

```
Attributes of example.txt changed.
```

To clear the read-only attribute, you would use the `-c` option:

```
sudo mattrib -c example.txt
```

Example output:

```
Attributes of example.txt changed.
```

The `mattrib` command allows you to manage file attributes, which can be useful for controlling the behavior and visibility of files on your system.
