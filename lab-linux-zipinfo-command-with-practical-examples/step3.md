# Analyze Zip File Contents with zipinfo

In the previous steps, we learned about the basic usage of the `zipinfo` command and explored some of its options. In this step, we'll dive deeper into analyzing the contents of a zip file using the `zipinfo` command.

One useful feature of `zipinfo` is its ability to display information about individual files within the zip archive. Let's say we want to get more details about the `file1.txt` file in our `sample.zip` file. We can use the following command:

```bash
zipinfo -z sample.zip file1.txt
```

Example output:

```
Archive:  sample.zip
Length     Date   Time   Name
--------    ----   ----   ----
       6  2023-04-23 10:00   file1.txt
--------                   -------
       6                    1 file
```

This command shows us the size, modification date, and name of the `file1.txt` file within the `sample.zip` archive.

Another useful feature of `zipinfo` is the ability to display the contents of a specific file within the zip archive. Let's say we want to see the contents of `file2.txt`:

```bash
zipinfo -p sample.zip file2.txt
```

Example output:

```
Archive:  sample.zip
file2.txt:
contents of file2.txt
```

The `-p` (or `--show-file-comment`) option tells `zipinfo` to display the contents of the specified file.

Finally, let's say we want to get a summary of the compression statistics for the zip file:

```bash
zipinfo -s sample.zip
```

Example output:

```
Archive:  sample.zip
Zip file size: 270 bytes, number of entries: 3
3 files, 18 bytes uncompressed, 270 bytes compressed:  67.4%
```

This command provides a concise summary of the zip file, including the total size, number of entries, and overall compression statistics.

By using these various `zipinfo` options, you can thoroughly analyze the contents of your zip files and get the information you need to understand their structure and contents.
