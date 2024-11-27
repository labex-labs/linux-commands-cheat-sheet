# Download Files from the Internet Using wget

In this step, you will learn how to use the `wget` command to download files from the internet.

Let's start by downloading a file from a website:

```
wget https://example.com/file.zip
```

This will download the `file.zip` file from the `https://example.com/file.zip` URL and save it in the current directory.

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

You can also save the downloaded file with a different name using the `-O` or `--output-document` option:

```
wget -O myfile.zip https://example.com/file.zip
```

This will download the same file but save it as `myfile.zip` instead of `file.zip`.

If you want to download a file to a specific directory, use the `-P` or `--directory-prefix` option:

```
wget -P ~/downloads https://example.com/file.zip
```

This will download the file and save it in the `~/downloads` directory.
