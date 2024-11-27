# Customize fmt Command Options

In this final step, you will learn how to customize the `fmt` command with additional options to suit your specific text formatting needs.

One common use case is to preserve the original indentation of the text. Let's create a sample file with indented lines:

```bash
cat > sample3.txt <<EOF
    This is a sample text file with
        indented lines that need to be
            preserved.
EOF
```

Example output:

```
    This is a sample text file with
        indented lines that need to be
            preserved.
```

To preserve the indentation, we can use the `-p` option:

```bash
fmt -p sample3.txt
```

Example output:

```
    This is a sample text file with
        indented lines that need to be
            preserved.
```

As you can see, the indentation has been preserved.

Another useful option is `-t`, which can be used to specify the tab size. Let's create a sample file with tabs:

```bash
cat > sample4.txt <<EOF
This	is a sample text file	with tabs.
EOF
```

Example output:

```
This	is a sample text file	with tabs.
```

Now, let's format the file using the `-t` option to set the tab size to 4 spaces:

```bash
fmt -t 4 sample4.txt
```

Example output:

```
This    is a sample text file    with tabs.
```

The `fmt` command provides several other options, such as `-s` to preserve spacing between words, `-u` to remove unnecessary whitespace, and `-w` to set the desired line width. Experiment with these options to find the best configuration for your text formatting needs.
