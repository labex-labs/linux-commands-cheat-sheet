# Automate Backup Operations with case Command

In this step, you will learn how to use the `case` command to automate backup operations for different file types.

Let's say you have a directory with various files, and you want to create backups for each file type. You can use the `case` statement to achieve this.

First, create a new directory and navigate to it:

```bash
mkdir ~/project/backup
cd ~/project/backup
```

Now, let's create some sample files with different extensions:

```bash
touch file1.txt file2.pdf file3.jpg file4.png file5.gif file6.doc
```

Next, create a new shell script called `backup.sh` in the `~/project/backup` directory:

```bash
nano backup.sh
```

Add the following code to the script:

```bash
#!/bin/bash

for file in *; do
  case "$file" in
    *.txt)
      echo "Backing up text file: $file"
      cp "$file" "${file%.txt}.txt.bak"
      ;;
    *.pdf)
      echo "Backing up PDF file: $file"
      cp "$file" "${file%.pdf}.pdf.bak"
      ;;
    *.jpg | *.png | *.gif)
      echo "Backing up image file: $file"
      cp "$file" "${file%.*}.bak"
      ;;
    *.doc)
      echo "Backing up document file: $file"
      cp "$file" "${file%.doc}.doc.bak"
      ;;
    *)
      echo "Skipping unsupported file type: $file"
      ;;
  esac
done
```

Save and exit the file.

Make the script executable:

```bash
chmod +x backup.sh
```

Now, run the script:

```bash
./backup.sh
```

Example output:

```
Backing up text file: file1.txt
Backing up PDF file: file2.pdf
Backing up image file: file3.jpg
Backing up image file: file4.png
Backing up image file: file5.gif
Backing up document file: file6.doc
```

In the script, the `case` statement checks the file extension and performs the corresponding backup action. For each file type, the script creates a backup file with the same name but a `.bak` extension. The `*.jpg | *.png | *.gif` pattern matches all image files, and the backup file is created with the same base name but without the extension.

This example demonstrates how you can use the `case` statement to automate backup operations based on file extensions.
