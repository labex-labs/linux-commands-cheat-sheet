# Print a PDF File Using the lpr Command

In this step, you will learn how to use the `lpr` command to print a PDF file.

First, let's create a sample PDF file to print. You can download a PDF file from the internet or create one using a PDF editor. For this example, we'll use a sample PDF file named `sample.pdf`.

To print the PDF file, you can use the `lpr` command:

```
$ lpr sample.pdf
```

Example output:

```

```

In this example, we use the `lpr` command to print the `sample.pdf` file to the default printer.

If you want to print the PDF file to a specific printer, you can use the `-P` option to specify the printer name:

```
$ lpr -P printer_name sample.pdf
```

Replace `printer_name` with the name of the printer you want to use.

You can also print multiple copies of the PDF file by using the `-#` option:

```
$ lpr -# 3 sample.pdf
```

This will print 3 copies of the `sample.pdf` file.
