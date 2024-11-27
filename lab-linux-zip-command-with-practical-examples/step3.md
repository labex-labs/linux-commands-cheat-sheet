# Compress and Encrypt Files with zip

In this step, you will learn how to compress and encrypt files using the `zip` command.

First, let's create some sample files to work with:

```bash
cd ~/project
touch secret_file.txt important_document.pdf
```

Now, let's compress and encrypt these files using the `zip` command:

```bash
zip -e encrypted_archive.zip secret_file.txt important_document.pdf
```

You will be prompted to enter a password for the encryption:

```
Enter password:
Verify password:
```

After entering the password, the `encrypted_archive.zip` file will be created, containing the encrypted `secret_file.txt` and `important_document.pdf` files.

To extract the encrypted zip archive, you will need to use the `unzip` command and provide the password:

```bash
unzip encrypted_archive.zip
```

You will be prompted to enter the password:

```
Archive:  encrypted_archive.zip
[encrypted_archive.zip] secret_file.txt password:
```

After entering the correct password, the files will be extracted from the encrypted zip archive.
