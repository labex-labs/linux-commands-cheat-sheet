# Understand the lpr Command

In this step, you will learn about the `lpr` command in Linux, which is used to send print jobs to a printer. The `lpr` command is a part of the Common Unix Printing System (CUPS) and is used to print files from the command line.

To understand the `lpr` command, let's start by checking its manual page:

```
$ man lpr
```

The manual page provides information about the various options and usage of the `lpr` command. Some of the key points are:

- The `lpr` command sends the specified files to the default printer for printing.
- The `-P` option can be used to specify a particular printer to use.
- The `-#` option can be used to specify the number of copies to print.
- The `-o` option can be used to set various print options, such as paper size, orientation, and duplex printing.

Now, let's try a simple example to print a text file using the `lpr` command:

```
$ echo "Hello, World!" > hello.txt
$ lpr hello.txt
```

Example output:

```

```

In this example, we first create a text file named `hello.txt` with the content "Hello, World!". Then, we use the `lpr` command to send the file to the default printer for printing.
