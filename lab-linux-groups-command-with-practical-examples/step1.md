# Understand the Linux groups Command

In this step, we will explore the Linux `groups` command, which is used to manage user groups. The `groups` command allows you to view the groups a user belongs to, create new groups, and add or remove users from groups.

First, let's check the groups the current user `labex` belongs to:

```bash
groups labex
```

Example output:

```
labex : labex sudo
```

The output shows that the user `labex` is a member of the `labex` and `sudo` groups.

To view all the groups on the system, you can use the following command:

```bash
cat /etc/group
```

Example output:

```
root:x:0:
daemon:x:1:
bin:x:2:
sys:x:3:
adm:x:4:labex
tty:x:5:
disk:x:6:
lp:x:7:
mail:x:8:
news:x:9:
uucp:x:10:
man:x:12:
proxy:x:13:
kmem:x:15:
dialout:x:20:
fax:x:21:
voice:x:22:
cdrom:x:24:labex
floppy:x:25:
tape:x:26:
sudo:x:27:labex
audio:x:29:
dip:x:30:
www-data:x:33:
backup:x:34:
operator:x:37:
list:x:38:
irc:x:39:
src:x:40:
gnats:x:41:
shadow:x:42:
utmp:x:43:
video:x:44:
sasl:x:45:
plugdev:x:46:labex
staff:x:50:
games:x:60:
users:x:100:
nogroup:x:65534:
systemd-journal:x:101:
systemd-network:x:102:
systemd-resolve:x:103:
systemd-timesync:x:104:
input:x:105:
crontab:x:106:
netdev:x:107:
syslog:x:108:
messagebus:x:109:
render:x:110:
ssh:x:111:
lxd:x:112:labex
```

This shows all the groups defined on the system, including their group ID and the users that belong to each group.
