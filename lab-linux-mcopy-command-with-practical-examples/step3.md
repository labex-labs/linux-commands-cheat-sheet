# Explore Advanced mcopy Options

In this final step, you will learn about some advanced options available with the `mcopy` command.

One useful option is the `-a` flag, which preserves the original file attributes when copying files. This can be helpful when working with files that have specific permissions or timestamps:

```bash
mcopy -a ~/project/source_dir/file1.txt a:
```

Example output:

```
Copying ~/project/source_dir/file1.txt to a:file1.txt
```

Another option is the `-M` flag, which allows you to set the file modification time of the copied file to match the original:

```bash
mcopy -M ~/project/source_dir/file2.txt a:
```

Example output:

```
Copying ~/project/source_dir/file2.txt to a:file2.txt
```

You can also use the `-D` option to specify the destination directory when copying files:

```bash
mcopy -D destination_dir ~/project/source_dir/file1.txt a:
```

Example output:

```
Copying ~/project/source_dir/file1.txt to a:destination_dir/file1.txt
```

In this example, the `file1.txt` is copied to the `destination_dir` directory on the `a:` device.

Finally, the `mcopy` command also supports wildcards, allowing you to copy multiple files at once:

```bash
mcopy ~/project/source_dir/*.txt a:
```

Example output:

```
Copying ~/project/source_dir/file1.txt to a:file1.txt
Copying ~/project/source_dir/file2.txt to a:file2.txt
```

This will copy all the `.txt` files from the `source_dir` directory to the root of the `a:` device.
