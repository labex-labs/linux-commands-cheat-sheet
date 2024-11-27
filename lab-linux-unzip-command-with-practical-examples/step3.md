# Unzip a Password-Protected ZIP File

In this step, you will learn how to extract files from a password-protected ZIP archive using the `unzip` command.

First, let's create a password-protected ZIP archive to work with. Run the following commands to create a ZIP file named `protected.zip` containing a text file:

```
cd ~/project
mkdir protected
cd protected
echo "This is a protected file." > protected_file.txt
zip -e protected.zip protected_file.txt
```

When prompted, enter a password for the ZIP file. For this example, let's use the password "mypassword".

Now, to extract the files from the `protected.zip` archive, use the following command:

```
unzip protected.zip
```

Example output:

```
Archive:  protected.zip
[protected.zip] protected_file.txt password:
```

The `unzip` command will prompt you to enter the password for the ZIP file. Enter the password you used when creating the archive (in this case, "mypassword").

If the password is correct, the file will be extracted:

```
inflating: protected_file.txt
```

If the password is incorrect, the `unzip` command will fail to extract the file.
