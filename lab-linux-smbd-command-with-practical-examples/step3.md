# Managing Samba Shares and Permissions

In this step, we will learn how to manage Samba shares and set permissions on the shared directories.

First, let's create a new directory to share:

```bash
sudo mkdir /home/labex/project/shared
sudo chown -R labex:labex /home/labex/project/shared
```

This creates a new directory called `shared` within the `/home/labex/project` directory, and sets the ownership to the `labex` user.

Next, let's add the new share to the Samba configuration file:

```bash
sudo nano /etc/samba/smb.conf
```

Add the following configuration block under the `[global]` section:

```
[shared]
   comment = Shared Directory
   path = /home/labex/project/shared
   browsable = yes
   read only = no
   guest ok = no
   valid users = labex
```

This creates a new Samba share called `shared` that points to the `/home/labex/project/shared` directory. The share is set to be browsable, writable, and accessible only to the `labex` user.

Save and exit the file.

Now, let's restart the Samba service to apply the changes:

```bash
sudo systemctl restart smbd
```

To test the new share, you can try to access it from a Windows or macOS client using the `smb://hostname/shared` URL, where `hostname` is the IP address or hostname of your Ubuntu 22.04 Docker container.

You should be able to see the new shared directory and read/write files as the `labex` user.
