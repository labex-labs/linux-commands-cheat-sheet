# Understand the Purpose and Syntax of the wget Command

In this step, you will learn about the purpose and syntax of the `wget` command in Linux. The `wget` command is a powerful tool used to download files from the internet.

First, let's understand the basic syntax of the `wget` command:

```
wget [options] [URL]
```

The most common options used with `wget` are:

- `-O` or `--output-document=FILE`: Save the downloaded file with a different name.
- `-P` or `--directory-prefix=PREFIX`: Save the downloaded file in the specified directory.
- `-c` or `--continue`: Continue a previously interrupted download.
- `-r` or `--recursive`: Download files recursively, including directories and subdirectories.
- `-b` or `--background`: Run `wget` in the background.

Example usage:

```
wget https://example.com/file.zip
```

This will download the file `file.zip` from the URL `https://example.com/file.zip` and save it in the current directory.

Example output:

```
--2023-04-11 10:00:00--  https://example.com/file.zip
Resolving example.com (example.com)... 93.184.216.34
Connecting to example.com (example.com)|93.184.216.34|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 12345678 (12M) [application/zip]
Saving to: 'file.zip'

file.zip            100%[===================>]  12.35M  3.32MB/s    in 3.7s

2023-04-11 10:00:04 (3.32 MB/s) - 'file.zip' saved [12345678/12345678]
```

The output shows the download progress, the file size, and the time taken to complete the download.
