# Verify File Integrity Using MD5 Checksums

In this step, you will learn how to use the `md5sum` command to verify the integrity of files by comparing their MD5 checksums.

First, let's create a new file and generate its MD5 checksum:

```bash
cd ~/project
echo "This is a test file." > test.txt
md5sum test.txt
```

Example output:

```
e10adc3949ba59abbe56e057f20f883e  test.txt
```

Now, let's say you have received a file from a different source, and you want to verify its integrity. You can do this by comparing the MD5 checksum of the received file with the expected checksum.

Suppose the expected MD5 checksum for the `test.txt` file is `e10adc3949ba59abbe56e057f20f883e`. You can verify the integrity of the file by running the following command:

```bash
md5sum -c <(echo "e10adc3949ba59abbe56e057f20f883e  test.txt")
```

Example output:

```
test.txt: OK
```

The output shows that the MD5 checksum of the `test.txt` file matches the expected value, indicating that the file has not been corrupted.

If the checksum does not match, the output will show an error:

```bash
echo "This is a modified file." > test.txt
md5sum -c <(echo "e10adc3949ba59abbe56e057f20f883e  test.txt")
```

Example output:

```
test.txt: FAILED
md5sum: test.txt: FAILED
```

In this case, the MD5 checksum of the modified `test.txt` file does not match the expected value, indicating that the file has been corrupted or modified.
