# Understand the Basics of the find Command

In this step, you will learn the basic usage of the `find` command in Linux. The `find` command is a powerful tool that allows you to search for files and directories based on various criteria, such as name, file type, size, and more.

Let's start by understanding the basic syntax of the `find` command:

```bash
find [path] [expression]
```

- `[path]`: The directory or directory tree where you want to search for files. If not specified, the current directory is used.
- `[expression]`: The criteria used to search for files, such as file name, file type, size, etc.

Now, let's try some basic examples:

1. Search for all files in the current directory:

   ```bash
   find .
   ```

   Example output:

   ```
   .
   ./file1.txt
   ./file2.txt
   ./directory1
   ./directory1/file3.txt
   ```

2. Search for all files with the `.txt` extension in the current directory:

   ```bash
   find . -name "*.txt"
   ```

   Example output:

   ```
   ./file1.txt
   ./file2.txt
   ./directory1/file3.txt
   ```

3. Search for all directories in the current directory:

   ```bash
   find . -type d
   ```

   Example output:

   ```
   .
   ./directory1
   ```

4. Search for all files larger than 1 megabyte (MB) in the current directory:

   ```bash
   find . -size +1M
   ```

   Example output:

   ```
   ./large_file.zip
   ```

The `find` command provides many more options and expressions to refine your searches. In the next steps, you will explore more advanced use cases of the `find` command.
