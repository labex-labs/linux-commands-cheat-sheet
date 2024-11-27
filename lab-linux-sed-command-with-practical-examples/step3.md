# Edit Multiple Files with sed

In this step, we will learn how to use the sed command to edit multiple files at once.

First, let's create two sample text files:

```bash
echo "This is the first file." > file1.txt
echo "This is the second file." > file2.txt
```

**Replace text in multiple files**

To replace text in multiple files, simply pass the file names as arguments to the sed command:

```bash
sed 's/first/updated/g' file1.txt file2.txt
```

Example output:

```
This is the updated file.
This is the second file.
```

**Edit files in-place**

By default, sed prints the modified output to the console. To edit the files in-place, use the `-i` option:

```bash
sed -i 's/second/new/g' file1.txt file2.txt
```

Now, the files `file1.txt` and `file2.txt` have been modified directly.

**Use a backup file**

If you want to keep a backup of the original files, you can use the `-i` option with a backup extension:

```bash
sed -i.bak 's/new/updated/g' file1.txt file2.txt
```

This will create backup files `file1.txt.bak` and `file2.txt.bak` containing the original content.

**Edit files recursively**

To edit files recursively in a directory, you can use the `find` command along with sed:

```bash
find . -type f -name "*.txt" -exec sed -i 's/updated/final/g' {} \;
```

This will replace all occurrences of "updated" with "final" in all `.txt` files in the current directory and its subdirectories.

With these techniques, you can efficiently edit multiple files using the sed command. This can be particularly useful when you need to perform large-scale text replacements or modifications across multiple files.
