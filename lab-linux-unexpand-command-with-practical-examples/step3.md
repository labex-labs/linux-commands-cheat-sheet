# Customize the unexpand Command with Additional Options

In this final step, you will learn how to customize the `unexpand` command with additional options to further control the conversion of spaces to tabs.

The `unexpand` command has several options that allow you to fine-tune its behavior. Here are a few examples:

1. **Specify tab stop positions**: By default, the `unexpand` command converts spaces to tabs using a tab stop every 8 columns. You can change this behavior by using the `-t` (or `--tabs=N`) option, where `N` is the number of columns between tab stops.

```
$ unexpand -t 4 sample.txt
This	is	a	sample	text	file	with	tabs.
```

2. **Convert only leading spaces**: If you only want to convert leading spaces (spaces at the beginning of a line) and leave other spaces unchanged, you can use the `-f` (or `--first-only`) option.

```
$ unexpand -f sample.txt
This   is	a	sample	text	file	with	tabs.
```

3. **Preserve the original file**: By default, the `unexpand` command modifies the input file in-place. If you want to preserve the original file and create a new file with the converted content, you can use the `-o` (or `--output=FILE`) option.

```
$ unexpand -o converted.txt sample.txt
```

These are just a few examples of the additional options available with the `unexpand` command. Experiment with different combinations of options to find the best way to convert spaces to tabs in your text files.
