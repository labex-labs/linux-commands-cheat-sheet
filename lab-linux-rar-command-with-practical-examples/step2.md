# Create and Extract rar Archives

In this step, we will learn how to create and extract RAR archives using the `rar` command.

First, let's create a sample directory and some files to work with:

```bash
cd ~/project
mkdir sample_files
cd sample_files
touch file1.txt file2.txt file3.txt
```

Now, let's create a RAR archive named `sample.rar` that contains the files in the `sample_files` directory:

```bash
rar a sample.rar *.txt
```

Example output:

```
RAR 6.10   Copyright (c) 1993-2022 Alexander Roshal   25 Mar 2022
Evaluation copy. Registration is required for private or commercial use.

Adding files to archive sample.rar

Creating archive sample.rar

Archiving  file1.txt
Archiving  file2.txt
Archiving  file3.txt

The archive has been updated successfully.
```

The `rar a` command creates a new RAR archive named `sample.rar` and adds all the `.txt` files in the current directory to it.

Next, let's extract the contents of the `sample.rar` archive to a new directory:

```bash
mkdir extracted_files
rar x sample.rar extracted_files
```

Example output:

```
RAR 6.10   Copyright (c) 1993-2022 Alexander Roshal   25 Mar 2022
Evaluation copy. Registration is required for private or commercial use.

Extracting  file1.txt
Extracting  file2.txt
Extracting  file3.txt

All files were extracted
```

The `rar x` command extracts the contents of the `sample.rar` archive to the `extracted_files` directory.

Now, let's verify that the files were extracted correctly:

```bash
ls -l extracted_files
```

Example output:

```
total 0
-rw-r--r-- 1 labex labex 0 May 22 12:34 file1.txt
-rw-r--r-- 1 labex labex 0 May 22 12:34 file2.txt
-rw-r--r-- 1 labex labex 0 May 22 12:34 file3.txt
```

The files have been extracted successfully.
