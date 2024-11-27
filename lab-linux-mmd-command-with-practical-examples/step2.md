# Create Markdown Files Using the mmd Command

In this step, you will learn how to create Markdown files using the `mmd` command. Markdown is a lightweight markup language that allows you to format text in a simple and readable way.

Let's start by creating a new Markdown file with some basic content:

```bash
mmd -o sample.md
```

This will create a new file named `sample.md` in the current directory. You can now open the file in a text editor and add some Markdown content, such as:

```markdown
# This is a Heading

This is a paragraph with some **bold text** and _italic text_.

- Unordered list item 1
- Unordered list item 2
- Unordered list item 3

1. Ordered list item 1
2. Ordered list item 2
3. Ordered list item 3
```

Once you have added the content, save the file.

You can also create Markdown files with a specific template using the `-t` option:

```bash
mmd -t mytemplate.txt -o sample2.md
```

This will create a new file named `sample2.md` using the `mytemplate.txt` template.

Example output:

```
File 'sample.md' created.
File 'sample2.md' created.
```
