# Convert Markdown Files to HTML and PDF Formats

In this step, you will learn how to convert Markdown files to HTML and PDF formats using the `mmd` command.

First, let's convert the `sample.md` file we created in the previous step to an HTML file:

```bash
mmd -H -o sample.html sample.md
```

This will create a new file named `sample.html` in the current directory, which contains the HTML representation of the Markdown content.

Next, let's convert the same Markdown file to a PDF file:

```bash
mmd -P -o sample.pdf sample.md
```

This will create a new file named `sample.pdf` in the current directory, which contains the PDF representation of the Markdown content.

Example output:

```
File 'sample.html' created.
File 'sample.pdf' created.
```

You can now open the `sample.html` and `sample.pdf` files to see the converted content.
