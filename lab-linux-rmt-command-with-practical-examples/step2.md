# Backup and Restore Files Using rmt

In this step, we will learn how to use the `rmt` command to backup and restore files over a network.

First, let's create a sample file to work with:

```bash
echo "This is a test file." > ~/project/test_file.txt
```

Now, let's use the `tar` command with the `rmt` command to create a backup of the `test_file.txt` on a remote server:

```bash
sudo tar -cvf - ~/project/test_file.txt | rmt remote_host:/path/to/backup.tar
```

Here's what the command does:

- `tar -cvf -`: Creates a tarball archive from the `test_file.txt` file.
- `| rmt remote_host:/path/to/backup.tar`: Pipes the tarball output to the `rmt` command, which sends the data to the remote host and saves it as `backup.tar`.

To restore the file from the remote backup, use the following command:

```bash
rmt remote_host:/path/to/backup.tar | sudo tar -xvf -
```

This command retrieves the `backup.tar` file from the remote host and extracts the contents to the local system.

Let's verify that the file was restored correctly:

```bash
cat ~/project/test_file.txt
```

Example output:

```
This is a test file.
```

Great! You have successfully used the `rmt` command to backup and restore a file over a network.
