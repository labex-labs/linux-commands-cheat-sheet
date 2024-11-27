# Extract Files from a Compressed ZIP Archive

In this step, you will learn how to extract files from a compressed ZIP archive using the `unzip` command.

First, let's create a sample ZIP archive to work with. Run the following commands to create a ZIP file named `example.zip` containing a few text files:

```
cd ~/project
mkdir example
cd example
echo "This is file1.txt" > file1.txt
echo "This is file2.txt" > file2.txt
echo "This is file3.txt" > file3.txt
zip -r example.zip .
```

Now, to extract the files from the `example.zip` archive, use the following command:

```
unzip example.zip
```

Example output:

```
Archive:  example.zip
 extracting: file1.txt
 extracting: file2.txt
 extracting: file3.txt
```

This will extract all the files from the `example.zip` archive to the current directory.

If you want to extract the files to a different directory, you can use the `-d` option followed by the target directory:

```
unzip example.zip -d ~/project/extracted
```

This will extract the files from `example.zip` to the `~/project/extracted` directory.
