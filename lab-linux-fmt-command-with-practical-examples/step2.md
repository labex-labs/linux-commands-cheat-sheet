# Format Text Files with the fmt Command

In this step, you will learn how to use the `fmt` command to format text files with various options.

First, let's create another sample text file with some longer lines:

```bash
echo "This is another sample text file with some very long lines that need to be reformatted to a specific width." > sample2.txt
```

Example output:

```
This is another sample text file with some very long lines that need to be reformatted to a specific width.
```

Now, let's use the `fmt` command to format the text file to a specific width of 60 characters:

```bash
fmt -w 60 sample2.txt
```

Example output:

```
This is another sample text file with some very
long lines that need to be reformatted to a
specific width.
```

The `-w` option specifies the desired width for the reformatted text. You can adjust this value to suit your needs.

Another useful option is `-c`, which centers the text:

```bash
fmt -w 60 -c sample2.txt
```

Example output:

```
   This is another sample text file with some very
   long lines that need to be reformatted to a
   specific width.
```

The `fmt` command also supports other options, such as `-u` to remove unnecessary whitespace and `-s` to preserve the spacing between words.
