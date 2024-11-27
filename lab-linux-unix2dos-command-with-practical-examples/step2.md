# Converting Text Files from Unix to DOS Format

In this step, you will learn how to use the `unix2dos` command to convert multiple text files from the Unix/Linux format to the DOS/Windows format.

First, let's create a few more sample text files in the Unix format:

```bash
echo "This is another sample text file." > sample_unix2.txt
echo "This is the third sample text file." > sample_unix3.txt
```

Now, let's convert all the text files in the current directory from Unix to DOS format:

```bash
unix2dos *.txt
```

Example output:

```
unix2dos: converting file sample_unix.txt to DOS format ...
unix2dos: converting file sample_unix2.txt to DOS format ...
unix2dos: converting file sample_unix3.txt to DOS format ...
```

You can now check the contents of the converted files:

```bash
cat sample_unix.txt
```

Example output:

```
This is a sample text file.^M
```

```bash
cat sample_unix2.txt
```

Example output:

```
This is another sample text file.^M
```

```bash
cat sample_unix3.txt
```

Example output:

```
This is the third sample text file.^M
```

Notice the `^M` character at the end of each line, which represents the added `CR` (Carriage Return) character.

The `unix2dos` command can also be used to convert a single file:

```bash
unix2dos sample_unix.txt
```

Example output:

```
unix2dos: converting file sample_unix.txt to DOS format ...
```
