# Utilize the exit Command with Different Exit Codes

In this step, you will learn how to utilize the `exit` command with different exit codes to provide more detailed information about the script's execution status.

Exit codes in Linux are integer values that range from 0 to 255. The specific exit codes can be used to indicate different types of errors or success conditions in your shell scripts.

Let's create a script that demonstrates the usage of different exit codes:

```bash
nano ~/project/script.sh
```

Add the following content to the script:

```bash
#!/bin/bash

# Check if the user has provided an argument
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
  echo "Error: File not found: $1"
  exit 2
fi

# Read the contents of the file
content=$(cat "$1")
echo "File content: $content"

# Exit with a successful exit code
exit 0
```

Save and close the file.

Now, let's run the script with different scenarios:

```bash
# Run the script without any arguments
~/project/script.sh
```

Example output:

```
Usage: ~/project/script.sh <filename>
```

The script exits with an exit code of 1 because the user did not provide the required argument.

```bash
# Run the script with a non-existent file
~/project/script.sh non-existent.txt
```

Example output:

```
Error: File not found: non-existent.txt
```

The script exits with an exit code of 2 because the specified file does not exist.

```bash
# Run the script with a valid file
~/project/script.sh ~/project/script.sh
```

Example output:

```
File content: #!/bin/bash

# Check if the user has provided an argument
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
  echo "Error: File not found: $1"
  exit 2
fi

# Read the contents of the file
content=$(cat "$1")
echo "File content: $content"

# Exit with a successful exit code
exit 0
```

The script exits with an exit code of 0 because the file was found and the script executed successfully.

By using different exit codes, you can provide more detailed information about the script's execution status, which can be useful for error handling and debugging.
