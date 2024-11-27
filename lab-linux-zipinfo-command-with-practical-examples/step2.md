# Explore zipinfo Command Options

In the previous step, we learned about the basic usage of the `zipinfo` command to display information about the contents of a zip file. In this step, we'll explore some of the additional options available with the `zipinfo` command.

One useful option is the `-l` (or `--list`) flag, which provides a more concise listing of the zip file contents:

```bash
zipinfo -l sample.zip
```

Example output:

```
Archive:  sample.zip
 Length   Method    Size  Cmpr    Date    Time   Name
--------  ------  ------- ---- ---------- -----   ----
       6  Stored        6   0% 2023-04-23 10:00   file1.txt
       6  Stored        6   0% 2023-04-23 10:00   file2.txt
       6  Stored        6   0% 2023-04-23 10:00   file3.txt
--------          -------  ---                     -------
      18                18   0%                     3 files
```

Another useful option is the `-v` (or `--verbose`) flag, which provides more detailed information about the zip file contents:

```bash
zipinfo -v sample.zip
```

Example output:

```
Archive:  sample.zip
Zip file size: 270 bytes, number of entries: 3
-rw-r--r--  3.0 unx        6 b- defN 23-Apr-23 10:00 file1.txt
-rw-r--r--  3.0 unx        6 b- defN 23-Apr-23 10:00 file2.txt
-rw-r--r--  3.0 unx        6 b- defN 23-Apr-23 10:00 file3.txt
3 files, 18 bytes uncompressed, 270 bytes compressed:  67.4%
```

The `-h` (or `--help`) option can be used to display the full list of available `zipinfo` options:

```bash
zipinfo -h
```

This will show you the various flags and options you can use with the `zipinfo` command to customize the output and get the information you need about your zip files.
