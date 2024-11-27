# Create and Extract zip Archives

In this step, you will learn how to create and extract zip archives using the `zip` and `unzip` commands.

First, let's create a zip archive:

```bash
cd ~/project
touch file1.txt file2.txt
zip my_archive.zip file1.txt file2.txt
```

Example output:

```
  adding: file1.txt (stored 0%)
  adding: file2.txt (stored 0%)
```

The `zip my_archive.zip file1.txt file2.txt` command creates a zip archive named `my_archive.zip` that contains `file1.txt` and `file2.txt`.

Now, let's list the contents of the zip archive:

```bash
unzip -l my_archive.zip
```

Example output:

```
Archive:  my_archive.zip
 Length   Method    Size  Cmpr    Date    Time   CRC-32   Name
--------  ------  ------- ---- ---------- -----   ------   ----
       0  Stored        0   0% 03-23-2023 11:11  00000000  file1.txt
       0  Stored        0   0% 03-23-2023 11:11  00000000  file2.txt
--------          -------  ---                            -------
       0                0   0%                            2 files
```

To extract the zip archive, run the following command:

```bash
unzip my_archive.zip
```

Example output:

```
Archive:  my_archive.zip
 extracting: file1.txt
 extracting: file2.txt
```

This will extract the contents of the `my_archive.zip` file to the current directory.

You can also extract the zip archive to a specific directory:

```bash
mkdir extracted_files
unzip my_archive.zip -d extracted_files
```

This will extract the contents of the `my_archive.zip` file to the `extracted_files` directory.
