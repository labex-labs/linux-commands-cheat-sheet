# Understand the Purpose and Syntax of the indent Command

In this step, you will learn about the purpose and syntax of the `indent` command in Linux. The `indent` command is a tool used to format C/C++ source code by indenting it according to a specific set of rules.

To begin, let's explore the basic syntax of the `indent` command:

```
indent [options] input-file [output-file]
```

Here's a breakdown of the command:

- `indent`: This is the command name.
- `[options]`: These are the various options you can use to customize the formatting of the code.
- `input-file`: This is the file containing the C/C++ source code you want to format.
- `[output-file]`: This is the optional output file where the formatted code will be written. If not specified, the input file will be overwritten.

Some common options for the `indent` command include:

- `-bad`: Breaks function calls and declarations across lines.
- `-bap`: Breaks function parameters across lines.
- `-bbo`: Puts braces on "begin" lines.
- `-nbc`: Does not break function calls across lines.
- `-br`: Puts braces on "begin" lines.
- `-brs`: Puts braces on "begin" lines with a space.
- `-ce`: Puts comments to the right of code.
- `-cli`: Indents comments to the column specified.

Example output:

```
$ indent --help
Usage: indent [options] input-file [output-file]
Options:
  -bad       Break after boolean and arithmetic operators
  -bap       Break after parameters in function declarations
  -bbo       Put braces on "begin" lines
  -nbc       Don't break function calls across lines
  -br        Put braces on "begin" lines
  -brs       Put braces on "begin" lines with a space
  -ce        Put comments to the right of code
  -cli       Indent comments to column N
  ...
```

In the next step, you will learn how to use the `indent` command to format C/C++ source code.
