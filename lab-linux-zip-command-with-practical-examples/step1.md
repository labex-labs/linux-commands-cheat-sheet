# Understand the zip Command

In this step, you will learn about the basic usage of the `zip` command in Linux. The `zip` command is a popular tool for compressing and archiving files and directories.

First, let's check the version of the `zip` command installed on your system:

```bash
zip --version
```

Example output:

```
Zip 3.0 (July 5th 2008)
 Copyright (c) 1990-2008 Info-ZIP - Type 'zip "-L"' for software license.
```

The `zip` command has a wide range of options and features. Let's explore some of the most common ones:

1. **Creating a zip archive**:

   ```bash
   zip archive.zip file1.txt file2.txt directory/
   ```

   This command will create a zip archive named `archive.zip` containing `file1.txt`, `file2.txt`, and all files and subdirectories in the `directory/` folder.

2. **Listing the contents of a zip archive**:

   ```bash
   unzip -l archive.zip
   ```

   This will list the contents of the `archive.zip` file without extracting it.

3. **Extracting a zip archive**:

   ```bash
   unzip archive.zip
   ```

   This will extract all the files and directories from the `archive.zip` file to the current directory.

4. **Extracting a zip archive to a specific directory**:

   ```bash
   unzip archive.zip -d /path/to/extract/directory
   ```

   This will extract the contents of `archive.zip` to the specified directory.

5. **Compressing a directory with the `zip` command**:

   ```bash
   zip -r archive.zip directory/
   ```

   This will create a zip archive named `archive.zip` that contains all the files and subdirectories in the `directory/` folder.

6. **Encrypting a zip archive**:
   ```bash
   zip -e archive.zip file1.txt file2.txt
   ```
   This will create an encrypted zip archive named `archive.zip` that contains `file1.txt` and `file2.txt`. You will be prompted to enter a password for the encryption.

Remember, the `zip` command provides many more options and features. You can explore them by running `man zip` in your terminal.
