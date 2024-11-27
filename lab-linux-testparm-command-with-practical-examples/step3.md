# Analyze Samba Configuration Parameters with testparm

In this step, we will learn how to use the `testparm` command to analyze the Samba configuration parameters.

First, let's navigate to the project directory and open the Samba configuration file:

```bash
cd ~/project
sudo nano smb.conf
```

Add the following additional configuration parameters to the file:

```
[global]
   workgroup = WORKGROUP
   server string = Samba Server %v
   netbios name = ubuntu
   security = user
   map to guest = bad user
   guest account = nobody
   log file = /var/log/samba/log.%m
   max log size = 1000

[homes]
   comment = Home Directories
   browsable = no
   writable = yes
```

Save the file and exit the text editor.

Now, let's use the `testparm` command to analyze the Samba configuration parameters:

```bash
sudo testparm -v
```

This will display all the Samba configuration parameters and their current values. You can look for specific parameters by using the `grep` command:

```bash
sudo testparm -v | grep "log file"
```

Example output:

```
   log file = /var/log/samba/log.%m
```

This shows that the `log file` parameter is set to `/var/log/samba/log.%m`.

You can also use the `testparm` command to check the value of a specific parameter:

```bash
sudo testparm -s -l "log file"
```

Example output:

```
log file = /var/log/samba/log.%m
```

The `-s` option tells `testparm` to only display the value of the specified parameter, and the `-l` option specifies the parameter name.
