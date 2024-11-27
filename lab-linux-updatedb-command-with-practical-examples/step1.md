# Understand the Purpose of updatedb Command

In this step, you will learn about the purpose of the `updatedb` command in Linux. The `updatedb` command is used to update the locate database, which is a database that stores information about the location of files on the system. This database is used by the `locate` command to quickly search for files on the system.

The `updatedb` command scans the entire file system and updates the locate database with the current file locations. This is useful because the file system can change over time, and the locate database needs to be updated to reflect these changes.

Let's start by running the `updatedb` command:

```bash
sudo updatedb
```

Example output:

```
/usr/bin/updatedb: Scanning /
/usr/bin/updatedb: Scanning /boot
/usr/bin/updatedb: Scanning /dev
/usr/bin/updatedb: Scanning /etc
/usr/bin/updatedb: Scanning /home
/usr/bin/updatedb: Scanning /lib
/usr/bin/updatedb: Scanning /media
/usr/bin/updatedb: Scanning /mnt
/usr/bin/updatedb: Scanning /opt
/usr/bin/updatedb: Scanning /proc
/usr/bin/updatedb: Scanning /root
/usr/bin/updatedb: Scanning /run
/usr/bin/updatedb: Scanning /sbin
/usr/bin/updatedb: Scanning /snap
/usr/bin/updatedb: Scanning /srv
/usr/bin/updatedb: Scanning /sys
/usr/bin/updatedb: Scanning /tmp
/usr/bin/updatedb: Scanning /usr
/usr/bin/updatedb: Scanning /var
/usr/bin/updatedb: Merging directories
/usr/bin/updatedb: Writing to database
```

The `updatedb` command scans the entire file system and updates the locate database with the current file locations. This process can take some time, depending on the size of your file system.

Now that you've updated the locate database, you can use the `locate` command to quickly search for files on your system.
