# Automate Repetitive Tasks with Bash Scripts

In this step, we will learn how to automate repetitive tasks using Bash scripts. Bash scripts are powerful tools that allow you to streamline your workflow and save time by automating routine operations.

Let's start by creating a simple script that generates a list of files in the current directory and saves it to a file.

Open a text editor and create a new file named `list_files.sh` in the `~/project` directory:

```bash
nano ~/project/list_files.sh
```

Add the following content to the file:

```bash
#!/bin/bash

echo "Generating a list of files in the current directory..."
ls -l > ~/project/file_list.txt
echo "File list saved to ~/project/file_list.txt"
```

Save and close the file.

Make the script executable:

```bash
chmod +x ~/project/list_files.sh
```

Now, run the script:

```bash
~/project/list_files.sh
```

Example output:

```
Generating a list of files in the current directory...
File list saved to ~/project/file_list.txt
```

Check the contents of the `file_list.txt` file:

```bash
cat ~/project/file_list.txt
```

The script has generated a list of files in the current directory and saved it to the `file_list.txt` file.

In the next step, we will explore the use of conditional statements and loops in Bash scripts to add more functionality and flexibility to our automation tasks.
