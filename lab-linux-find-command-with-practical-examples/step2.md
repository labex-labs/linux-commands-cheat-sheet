# Search for Files by Name and File Type

In this step, you will learn how to use the `find` command to search for files based on their name and file type.

1. Search for files by name:

   To search for files by name, you can use the `-name` option followed by the file name or a wildcard pattern.

   ```bash
   find . -name "file1.txt"
   ```

   Example output:

   ```
   ./file1.txt
   ```

   You can also use wildcard patterns to search for multiple files with similar names:

   ```bash
   find . -name "*.txt"
   ```

   Example output:

   ```
   ./file1.txt
   ./file2.txt
   ./directory1/file3.txt
   ```

2. Search for files by file type:

   To search for files by their type, you can use the `-type` option followed by the file type character. The common file type characters are:

   - `f`: regular file
   - `d`: directory
   - `l`: symbolic link

   ```bash
   find . -type f -name "*.txt"
   ```

   Example output:

   ```
   ./file1.txt
   ./file2.txt
   ./directory1/file3.txt
   ```

   ```bash
   find . -type d
   ```

   Example output:

   ```
   .
   ./directory1
   ```

You can combine the `-name` and `-type` options to refine your searches. For example, to find all regular files with the `.txt` extension in the current directory:

```bash
find . -type f -name "*.txt"
```

Example output:

```
./file1.txt
./file2.txt
./directory1/file3.txt
```
