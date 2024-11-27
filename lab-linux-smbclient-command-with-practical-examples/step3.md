# List Files and Directories on a Windows Share

In this step, we will use the smbclient command to list the files and directories on a Windows share.

First, let's connect to the Windows share using the smbclient command. Replace the following placeholders with the appropriate values for your Windows share:

- `//windows-server/share`: The UNC path to the Windows share
- `username`: The username to access the Windows share
- `password`: The password for the username

```bash
smbclient //windows-server/share -U username%password
```

Example output:

```
Enter WORKGROUP\username's password:
Try "help" to get a list of possible commands.
smb: \>
```

Now, let's list the files and directories in the current directory on the Windows share:

```
smb: \> ls
  .                                   D        0  Wed Nov 30 11:59:39 2022
  ..                                  D        0  Wed Nov 30 11:59:39 2022
  example.txt                         A        12  Wed Nov 30 11:59:39 2022

                8467839 blocks of size 4096. 3524491 blocks available
smb: \>
```

The output shows the files and directories in the current directory on the Windows share. You can use the following smbclient commands to navigate and interact with the share:

- `cd directory`: Change the current directory
- `get file`: Download a file from the share
- `put file`: Upload a file to the share
- `quit`: Exit the smbclient session

When you're done, type `quit` to exit the smbclient session.
