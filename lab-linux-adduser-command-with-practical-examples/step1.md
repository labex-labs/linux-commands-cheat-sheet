# Create a New User Account

In this step, we will learn how to create a new user account on the Linux system.

First, let's use the `adduser` command to create a new user named `newuser`:

```bash
sudo adduser newuser
```

Example output:

```
Adding user `newuser` ...
Adding new group `newuser` (1001) ...
Adding new user `newuser` (1001) with group `newuser` ...
Creating home directory `/home/newuser` ...
Copying files from `/etc/skel` ...
New password:
Retype new password:
passwd: password updated successfully
Changing the user information for newuser
Enter the new value, or press ENTER for the default
	Full Name []: New User
	Room Number []:
	Work Phone []:
	Home Phone []:
	Other []:
Is the information correct? [Y/n] Y
```

The `adduser` command will prompt you to set a password for the new user, and also ask for some additional user information. Once the user is created, you can switch to the new user account using the `su` command:

```bash
su - newuser
```

This will switch to the `newuser` account, and you can verify the new user's home directory:

```bash
pwd
```

Example output:

```
/home/newuser
```

Now the new user account has been created successfully.
