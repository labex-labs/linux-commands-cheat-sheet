# Implement case Statement for File Extensions

In this step, you will learn how to use the `case` statement to handle different file extensions in a shell script.

Let's say you have a directory with various files, and you want to perform different actions based on the file extension. You can use the `case` statement to achieve this.

First, create a new directory and navigate to it:

```bash
mkdir ~/project/files
cd ~/project/files
```

Now, let's create some sample files with different extensions:

```bash
touch file1.txt file2.pdf file3.jpg file4.png file5.gif file6.doc
```

Next, create a new shell script called `file_operations.sh` in the `~/project/files` directory:

```bash
nano file_operations.sh
```

Add the following code to the script:

```bash
#!/bin/bash

for file in *; do
  case "$file" in
    *.txt)
      echo "Text file: $file"
      ;;
    *.pdf)
      echo "PDF file: $file"
      ;;
    *.jpg | *.png | *.gif)
      echo "Image file: $file"
      ;;
    *.doc)
      echo "Document file: $file"
      ;;
    *)
      echo "Unsupported file type: $file"
      ;;
  esac
done
```

Save and exit the file.

Make the script executable:

```bash
chmod +x file_operations.sh
```

Now, run the script:

```bash
./file_operations.sh
```

Example output:

```
Text file: file1.txt
PDF file: file2.pdf
Image file: file3.jpg
Image file: file4.png
Image file: file5.gif
Document file: file6.doc
```

In the script, the `case` statement checks the file extension and performs the corresponding action. The `*.txt`, `*.pdf`, `*.jpg | *.png | *.gif`, and `*.doc` patterns match the file extensions, and the appropriate message is printed for each file type. The `*` pattern is the default case, which handles any unsupported file types.

This example demonstrates how you can use the `case` statement to automate file management tasks based on file extensions.
