# Automate Repetitive Tasks with Shell Scripting

In this step, you will learn how to automate repetitive tasks using shell scripting. We will create a simple script to perform common file and directory operations.

First, let's create a new directory and navigate to it:

```bash
mkdir scripts
cd scripts
```

Now, let's create a new shell script file using the `nano` text editor:

```bash
nano file_operations.sh
```

In the editor, add the following content:

```bash
#!/bin/bash

# Create a new directory
mkdir new_directory

# Create a new file
touch new_file.txt

# List the contents of the current directory
ls -l
```

Save the file and exit the editor.

Make the script executable:

```bash
chmod +x file_operations.sh
```

Now, you can run the script:

```bash
./file_operations.sh
```

Example output:

```
total 0
drwxrwxr-x 2 labex labex 4096 Apr 18 12:34 new_directory
-rw-rw-r-- 1 labex labex    0 Apr 18 12:34 new_file.txt
```

As you can see, the script creates a new directory, a new file, and lists the contents of the current directory.

You can further enhance the script by adding more functionality, such as accepting user input, performing conditional operations, or even calling other commands and scripts.
