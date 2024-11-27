# Introduction to gawk Command

In this step, you will learn about the gawk command, a powerful text processing tool in Linux. gawk is a programming language that allows you to manipulate and extract data from text files.

First, let's check the version of gawk installed on your system:

```bash
gawk --version
```

Example output:

```
GNU Awk 5.1.0, API: 2.0 (GNU MPFR 4.1.0, GNU MP 6.2.0)
Copyright (C) 1989, 1991-2021, the Free Software Foundation.
```

The gawk command is used to search and process text files. It can perform a wide range of operations, such as:

- Extracting specific fields or columns from a text file
- Performing calculations and transformations on data
- Generating reports and summaries
- Automating text-based tasks

To get started, let's create a sample text file that we'll use throughout this lab:

```bash
cat > ~/project/data.txt << EOF
Name,Age,City
John,25,New York
Jane,30,London
Bob,35,Paris
EOF
```

This file contains a list of names, ages, and cities, separated by commas.

Now, let's try a simple gawk command to print the entire file:

```bash
gawk '{print}' ~/project/data.txt
```

Example output:

```
Name,Age,City
John,25,New York
Jane,30,London
Bob,35,Paris
```

In this command, the `'{print}'` part tells gawk to print each line of the file.

Let's break down the basic structure of a gawk command:

- `gawk`: The gawk command
- `'{print}'`: The pattern and action. In this case, the pattern is empty (matches all lines), and the action is to print the line.
- `~/project/data.txt`: The input file.

In the next step, you'll learn how to extract specific data from the text file using gawk.
