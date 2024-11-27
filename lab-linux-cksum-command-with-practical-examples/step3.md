# Verify File Integrity Using cksum

In this step, you will learn how to use the `cksum` command to verify the integrity of files.

Let's start by creating a sample file and calculating its checksum:

```bash
echo "This is a sample file." > sample.txt
cksum sample.txt
```

Example output:

```
2995857905 21 sample.txt
```

Now, let's intentionally modify the file and see how the checksum changes:

```bash
echo "This is a modified sample file." > sample.txt
cksum sample.txt
```

Example output:

```
3456789012 29 sample.txt
```

As you can see, the checksum value has changed, indicating that the file content has been modified.

You can use this checksum verification process to ensure the integrity of files, especially when downloading or transferring files from one location to another. By comparing the checksum of the original file with the checksum of the downloaded file, you can verify that the file has not been corrupted during the transfer.

For example, let's say you have downloaded a file from the internet and want to verify its integrity:

```bash
# Download a file
wget https://example.com/file.zip

# Calculate the checksum of the downloaded file
cksum file.zip
```

Example output:

```
3456789012 1234567 file.zip
```

Now, you can compare this checksum value with the checksum provided by the file's publisher or the website you downloaded it from. If the checksums match, you can be confident that the file has not been tampered with and is safe to use.
