# Converting Text Files from DOS to Unix Format

In this step, you will learn how to use the `dos2unix` command to convert text files from the DOS/Windows format to the Unix/Linux format.

First, let's create a sample text file in the DOS format:

```bash
echo "This is a sample text file in DOS format." > sample_dos.txt
```

Now, let's use the `dos2unix` command to convert the file:

```bash
dos2unix sample_dos.txt
```

Example output:

```
dos2unix: converting file sample_dos.txt to Unix format ...
```

The `dos2unix` command has modified the file in-place, removing the carriage return characters and converting the file to the Unix format.

Let's verify the contents of the file:

```bash
cat sample_dos.txt
```

Example output:

```
This is a sample text file in DOS format.
```

As you can see, the file now uses the Unix line ending (LF) instead of the DOS line ending (CR+LF).

You can also specify an output file to save the converted file with a different name:

```bash
dos2unix sample_dos.txt sample_unix.txt
```

This will create a new file `sample_unix.txt` with the Unix format, while leaving the original `sample_dos.txt` file unchanged.
