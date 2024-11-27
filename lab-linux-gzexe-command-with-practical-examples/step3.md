# Decompress and Execute Compressed Executable Files

In this step, you will learn how to decompress and execute compressed executable files using the `gzexe` command.

First, let's verify the compressed executable file we created in the previous step:

```bash
ls -l ~/project/sample_executable.sh.gz
```

Example output:

```
-rwxr-xr-x 1 labex labex 37 Apr 17 12:34 /home/labex/project/sample_executable.sh.gz
```

To decompress the file, you can simply execute the compressed file, and it will automatically decompress and run the original executable:

```bash
~/project/sample_executable.sh.gz
```

Example output:

```
This is a sample executable file.
```

As you can see, the compressed file executed successfully and displayed the expected output.

Alternatively, you can also use the `gunzip` command to decompress the file:

```bash
gunzip ~/project/sample_executable.sh.gz
```

This will create the original `sample_executable.sh` file, which you can then execute directly:

```bash
~/project/sample_executable.sh
```

Example output:

```
This is a sample executable file.
```

The `gunzip` command can be used to decompress any file compressed with the `gzip` utility, including those compressed with `gzexe`.
