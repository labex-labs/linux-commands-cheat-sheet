# Transferring Files Between Local and Remote Hosts Using SCP

In this step, you will learn how to use the Secure Copy (SCP) command to transfer files between your local machine and the remote Linux server.

First, let's create a test file on the local machine:

```bash
touch ~/project/test_file.txt
echo "This is a test file." > ~/project/test_file.txt
```

Now, let's copy the file from the local machine to the remote server:

```bash
scp ~/project/test_file.txt labex@localhost:~/project/
```

When prompted, enter the password for the `labex` user. The file should now be transferred to the remote server.

To copy a file from the remote server to the local machine, use the following command:

```bash
scp labex@localhost:~/project/test_file.txt ~/project/
```

Again, enter the password for the `labex` user when prompted. The file should now be copied to the local machine.

You can also use SCP to copy entire directories between the local and remote hosts:

```bash
# Copy a directory from local to remote
scp -r ~/project labex@localhost:~/

# Copy a directory from remote to local
scp -r labex@localhost:~/project ~/
```

The `-r` option is used to recursively copy the directory and its contents.
