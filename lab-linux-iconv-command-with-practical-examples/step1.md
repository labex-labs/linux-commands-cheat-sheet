# Introduction to the iconv Command

In this step, you will learn about the `iconv` command, which is a powerful tool in Linux for converting text between different character encodings. The `iconv` command is part of the GNU C Library and is widely used for handling multilingual text.

The basic syntax of the `iconv` command is:

```
iconv -f from_encoding -t to_encoding [input_file] -o output_file
```

Here, `from_encoding` is the source character encoding, and `to_encoding` is the target character encoding. If no input file is specified, `iconv` will read from standard input.

Let's start by checking the available character encodings on your system:

```
iconv -l
```

Example output:

```
UTF-8
UTF-16
UTF-16BE
UTF-16LE
...
```

This shows the various character encodings supported by the `iconv` command on your system.

Now, let's try a simple conversion from UTF-8 to ISO-8859-1 (Latin-1) encoding:

```
echo "Hello, World!" | iconv -f UTF-8 -t ISO-8859-1
```

Example output:

```
Hello, World!
```

In this example, we used the `echo` command to generate some text in UTF-8 encoding, and then passed it through the `iconv` command to convert it to ISO-8859-1 encoding.
