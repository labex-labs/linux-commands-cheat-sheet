# Combine basename with Other Linux Commands

In this final step, you will learn how to combine the `basename` command with other Linux commands to perform more complex file and directory operations.

Let's start by creating some sample files and directories:

```
cd ~/project
mkdir -p files/docs files/images
touch files/docs/report.txt files/images/photo.jpg
```

One common use case for `basename` is to extract the filename from a full path and then perform an operation on that file. For example, let's list all the files in the `files/docs` directory:

```
ls files/docs
```

Example output:

```
report.txt
```

Now, let's combine `basename` with `ls` to list the filenames only:

```
ls files/docs | xargs basename
```

Example output:

```
report.txt
```

In this example, we use `xargs` to pass the output of `ls files/docs` to the `basename` command, which then extracts the filenames.

Another common use case is to combine `basename` with `mv` or `cp` to rename or copy files. For example, let's rename the `report.txt` file to `document.txt`:

```
mv files/docs/report.txt files/docs/$(basename files/docs/report.txt .txt).new.txt
```

Example output:

```

```

In this example, we use `basename` to extract the filename `report.txt` from the full path, and then append `.new.txt` to the filename to create the new filename `document.new.txt`.

The `basename` command can be combined with many other Linux commands to perform a wide range of file and directory operations. Experiment with different combinations to see how you can use `basename` to streamline your workflow.
