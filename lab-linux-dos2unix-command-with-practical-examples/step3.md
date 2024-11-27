# Automating dos2unix Conversion with Shell Scripts

In this step, you will learn how to automate the process of converting text files from DOS to Unix format using shell scripts.

Let's create a simple shell script to convert all `.txt` files in the current directory:

```bash
#!/bin/bash

for file in *.txt; do
    if [ -f "$file" ]; then
        echo "Converting $file to Unix format..."
        dos2unix "$file"
    fi
done

echo "DOS to Unix conversion complete."
```

Save this script as `convert_to_unix.sh` in the `~/project` directory.

Now, make the script executable:

```bash
chmod +x ~/project/convert_to_unix.sh
```

You can now run the script to convert all `.txt` files in the current directory:

```bash
~/project/convert_to_unix.sh
```

Example output:

```
Converting sample_dos.txt to Unix format...
dos2unix: converting file sample_dos.txt to Unix format ...
DOS to Unix conversion complete.
```

The script uses a `for` loop to iterate through all the `.txt` files in the current directory, and then calls the `dos2unix` command on each file to convert it to the Unix format.

You can customize the script to handle different file extensions or even to recursively convert files in subdirectories. Additionally, you can add error handling and logging to make the script more robust.
