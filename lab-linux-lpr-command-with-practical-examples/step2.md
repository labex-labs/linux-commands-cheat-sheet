# Print a Text File Using the lpr Command

In this step, you will learn how to use the `lpr` command to print a text file.

First, let's create a sample text file to print:

```
$ echo "This is a sample text file." > sample.txt
```

Now, you can use the `lpr` command to send the file to the default printer for printing:

```
$ lpr sample.txt
```

Example output:

```

```

In this example, we use the `lpr` command to print the `sample.txt` file. The `lpr` command will send the file to the default printer configured on the system.

If you want to print the file to a specific printer, you can use the `-P` option to specify the printer name:

```
$ lpr -P printer_name sample.txt
```

Replace `printer_name` with the name of the printer you want to use.

You can also print multiple copies of the file by using the `-#` option:

```
$ lpr -# 3 sample.txt
```

This will print 3 copies of the `sample.txt` file.
