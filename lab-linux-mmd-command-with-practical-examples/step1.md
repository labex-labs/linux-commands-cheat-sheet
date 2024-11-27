# Understand the Purpose and Syntax of the mmd Command

In this step, you will learn about the purpose and syntax of the `mmd` command in Linux. The `mmd` command is used to create Markdown files, which are a lightweight markup language used for formatting text.

To understand the purpose of the `mmd` command, let's first create a simple Markdown file using the `mmd` command:

```bash
mmd sample.md
```

This will create a new file named `sample.md` in the current directory. You can now open the file in a text editor to see the basic Markdown syntax.

The basic syntax of the `mmd` command is as follows:

```
mmd [options] <filename>
```

Here, the `[options]` are optional parameters that you can use to customize the behavior of the `mmd` command. Some common options include:

- `-t `: Specifies the template to use for the Markdown file.
- `-o <output>`: Specifies the output file name.
- `-H`: Generates an HTML file instead of a Markdown file.
- `-P`: Generates a PDF file instead of a Markdown file.

For example, to create a Markdown file with a specific template and output it as an HTML file, you can use the following command:

```bash
mmd -t mytemplate.txt -o sample.html sample.md
```

This will create a new HTML file named `sample.html` using the `mytemplate.txt` template.

Example output:

```
File 'sample.md' created.
```
