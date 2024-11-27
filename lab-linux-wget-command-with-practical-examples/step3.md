# Automate File Downloads with wget Scripting

In this step, you will learn how to use `wget` in a script to automate file downloads.

First, let's create a simple script to download multiple files:

```bash
#!/bin/bash

# URLs to download
urls=(
  "https://example.com/file1.zip"
  "https://example.com/file2.tar.gz"
  "https://example.com/file3.pdf"
)

# Download each file
for url in "${urls[@]}"; do
  wget "$url"
done
```

Save this script as `download_files.sh` and make it executable:

```
chmod +x download_files.sh
```

Now, you can run the script to download the files:

```
./download_files.sh
```

This will download the three files specified in the `urls` array.

You can also add options to the `wget` command within the script. For example, to save the files in a specific directory:

```bash
#!/bin/bash

# Download directory
download_dir="~/downloads"

# URLs to download
urls=(
  "https://example.com/file1.zip"
  "https://example.com/file2.tar.gz"
  "https://example.com/file3.pdf"
)

# Create the download directory if it doesn't exist
mkdir -p "$download_dir"

# Download each file
for url in "${urls[@]}"; do
  wget -P "$download_dir" "$url"
done
```

This script will create the `~/downloads` directory (if it doesn't already exist) and download the files to that directory.
