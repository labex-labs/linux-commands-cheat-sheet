# Configuring the Samba Server

In this step, we will configure the Samba server to share directories on our Ubuntu 22.04 Docker container.

First, let's install the Samba package:

```bash
sudo apt-get update
sudo apt-get install -y samba
```

Next, we need to create a Samba configuration file. We'll use the default configuration file located at `/etc/samba/smb.conf`:

```bash
sudo nano /etc/samba/smb.conf
```

Add the following configuration to the file:

```
[global]
   workgroup = WORKGROUP
   security = user
   passdb backend = tdbsam
   printing = cups
   printcap name = cups
   load printers = yes
   cups options = raw

[share]
   comment = Public Share
   path = /home/labex/project
   browsable = yes
   read only = no
   guest ok = yes
```

This configuration creates a new Samba share called `share` that points to the `/home/labex/project` directory. The share is set to be browsable and writable by all users.

Save and exit the file.

Now, let's create the Samba user account:

```bash
sudo smbpasswd -a labex
```

Enter a password for the `labex` user when prompted.

Finally, let's restart the Samba service to apply the changes:

```bash
sudo systemctl restart smbd
```

The Samba server is now configured and ready to share the `/home/labex/project` directory.
