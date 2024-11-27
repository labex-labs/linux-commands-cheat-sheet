# Understand the Purpose and Syntax of testparm Command

In this step, we will learn about the purpose and syntax of the `testparm` command in Linux. The `testparm` command is a utility used to verify the syntax of Samba configuration files and analyze Samba parameters.

First, let's check the version of `testparm` installed on our system:

```bash
testparm --version
```

Example output:

```
Version 4.15.5-Debian
Copyright (C) Andrew Tridgell, Matthieu Patou 1992-2021
```

The `testparm` command is used to check the syntax of the Samba configuration file, typically located at `/etc/samba/smb.conf`. It can also be used to display the current Samba configuration parameters and their values.

To check the syntax of the Samba configuration file, run the following command:

```bash
sudo testparm
```

Example output:

```
Load smb config files from /etc/samba/smb.conf
Loaded services file OK.
Server role: ROLE_STANDALONE
Press enter to see a dump of your service definitions
```

The output shows that the Samba configuration file is loaded successfully, and the server is running in standalone mode.

To display the current Samba configuration parameters and their values, use the following command:

```bash
sudo testparm -v
```

This will print out all the Samba configuration parameters and their current values.
