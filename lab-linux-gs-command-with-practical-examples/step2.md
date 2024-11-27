# Convert PDF Files to Different Image Formats Using gs

In this step, we will learn how to use the `gs` command to convert PDF files to different image formats, such as JPEG, PNG, and TIFF.

First, let's create a sample PDF file that we can use for the conversion:

```bash
# Create a sample PDF file
echo "This is a sample PDF file." > sample.pdf
```

Now, let's convert the `sample.pdf` file to a JPEG image:

```bash
gs -sDEVICE=jpeg -o sample.jpg sample.pdf
```

The command above uses the following options:

- `-sDEVICE=jpeg`: Specifies the output device as JPEG.
- `-o sample.jpg`: Specifies the output file name as `sample.jpg`.
- `sample.pdf`: The input PDF file to be converted.

Example output:

```
GPL Ghostscript 9.55.0: Rendering page 1...
```

To convert the PDF file to a PNG image, you can use the following command:

```bash
gs -sDEVICE=png16m -o sample.png sample.pdf
```

The only difference in this command is the `-sDEVICE=png16m` option, which specifies the output device as a 16-bit color PNG image.

Example output:

```
GPL Ghostscript 9.55.0: Rendering page 1...
```

Finally, let's convert the PDF file to a TIFF image:

```bash
gs -sDEVICE=tiff -o sample.tiff sample.pdf
```

The `-sDEVICE=tiff` option specifies the output device as a TIFF image.

Example output:

```
GPL Ghostscript 9.55.0: Rendering page 1...
```

You can now find the converted image files (`sample.jpg`, `sample.png`, and `sample.tiff`) in the same directory as the original `sample.pdf` file.
