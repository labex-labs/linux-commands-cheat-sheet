# Optimize PDF Files by Reducing File Size with gs

In this step, we will learn how to use the `gs` command to optimize PDF files by reducing their file size.

First, let's create a sample PDF file with some content:

```bash
# Create a sample PDF file
cat << EOF > sample_large.pdf
This is a sample PDF file with some content.
This PDF file is intentionally created to be large in size.
EOF
```

Now, let's optimize the `sample_large.pdf` file using the `gs` command:

```bash
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=sample_optimized.pdf sample_large.pdf
```

The command above uses the following options:

- `-sDEVICE=pdfwrite`: Specifies the output device as PDF.
- `-dCompatibilityLevel=1.4`: Sets the PDF compatibility level to 1.4.
- `-dPDFSETTINGS=/screen`: Optimizes the PDF for on-screen viewing.
- `-dNOPAUSE -dQUIET -dBATCH`: Suppresses the progress output and runs Ghostscript in batch mode.
- `-sOutputFile=sample_optimized.pdf`: Specifies the output file name as `sample_optimized.pdf`.
- `sample_large.pdf`: The input PDF file to be optimized.

Example output:

```
Processing pages 1 through 1.
Page 1
```

You can now compare the file sizes of the original `sample_large.pdf` and the optimized `sample_optimized.pdf` files:

```bash
ls -lh *.pdf
```

Example output:

```
-rw-r--r-- 1 labex labex 1.1M Jan  1 00:00 sample_large.pdf
-rw-r--r-- 1 labex labex 283K Jan  1 00:00 sample_optimized.pdf
```

As you can see, the optimized `sample_optimized.pdf` file has a significantly smaller file size compared to the original `sample_large.pdf` file.
