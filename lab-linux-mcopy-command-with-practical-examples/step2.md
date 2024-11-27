# Copy Files and Directories Using mcopy

In this step, you will learn how to use the `mcopy` command to copy files and directories between different file systems.

Let's start by creating a directory and some files in the `~/project` directory:

```bash
mkdir ~/project/source_dir
touch ~/project/source_dir/file1.txt ~/project/source_dir/file2.txt
```

Now, let's copy the entire `source_dir` directory to the `a:` device:

```bash
mcopy -s ~/project/source_dir a:
```

Example output:

```
Copying ~/project/source_dir/file1.txt to a:file1.txt
Copying ~/project/source_dir/file2.txt to a:file2.txt
```

In this example, we used the `-s` option to copy the entire directory recursively. The `mcopy` command will copy each file within the `source_dir` directory to the root directory of the `a:` device.

You can also copy a single file using the `mcopy` command:

```bash
mcopy ~/project/source_dir/file1.txt a:
```

Example output:

```
Copying ~/project/source_dir/file1.txt to a:file1.txt
```

In this case, only the `file1.txt` file is copied to the root directory of the `a:` device.
