# Utilize Conditional Statements and Loops in Batch Processing

In this step, we will explore the use of conditional statements and loops in Bash scripts to add more flexibility and control to our batch processing tasks.

Let's create a script that checks the file size of a specific file and performs different actions based on the file size.

Open a text editor and create a new file named `file_size_check.sh` in the `~/project` directory:

```bash
nano ~/project/file_size_check.sh
```

Add the following content to the file:

```bash
#!/bin/bash

FILE_PATH="~/project/file_list.txt"
FILE_SIZE=$(du -h "$FILE_PATH" | cut -f1)

echo "Checking the size of $FILE_PATH..."

if [ "$FILE_SIZE" -lt "1" ]; then
  echo "The file is less than 1 KB. Uploading to the server..."
  # Add your upload logic here
elif [ "$FILE_SIZE" -lt "10" ]; then
  echo "The file is between 1 KB and 10 KB. Compressing the file..."
  # Add your compression logic here
else
  echo "The file is larger than 10 KB. Skipping the file."
fi
```

Save and close the file.

Make the script executable:

```bash
chmod +x ~/project/file_size_check.sh
```

Now, run the script:

```bash
~/project/file_size_check.sh
```

Example output:

```
Checking the size of ~/project/file_list.txt...
The file is less than 1 KB. Uploading to the server...
```

In this script, we first define the file path `FILE_PATH` and then use the `du` command to get the file size in a human-readable format. We then use conditional statements (`if`, `elif`, `else`) to check the file size and perform different actions based on the size.

In the next step, we will learn how to use loops in Bash scripts to automate tasks that need to be performed multiple times.
