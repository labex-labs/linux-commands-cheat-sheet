# Verify Samba Configuration File Syntax

In this step, we will learn how to use the `testparm` command to verify the syntax of the Samba configuration file.

First, let's navigate to the project directory and create a sample Samba configuration file:

```bash
cd ~/project
sudo nano smb.conf
```

Add the following content to the `smb.conf` file:

```
[global]
   workgroup = WORKGROUP
   server string = Samba Server %v
   netbios name = ubuntu
   security = user
   map to guest = bad user
   guest account = nobody

[homes]
   comment = Home Directories
   browsable = no
   writable = yes
```

Save the file and exit the text editor.

Now, let's use the `testparm` command to verify the syntax of the Samba configuration file:

```bash
sudo testparm
```

Example output:

```
Load smb config files from /home/labex/project/smb.conf
Loaded services file OK.
Server role: ROLE_STANDALONE
Press enter to see a dump of your service definitions
```

The output shows that the Samba configuration file is loaded successfully, and the syntax is valid.

To get more detailed information about the configuration parameters, you can use the `-v` option:

```bash
sudo testparm -v
```

This will display all the Samba configuration parameters and their current values.
