# Verify Group File Integrity Using grpck

In this step, we will use the `grpck` command to verify the integrity of the group file on our system.

First, let's run the `grpck` command to check the group file:

```bash
sudo grpck
```

Example output:

```
/etc/group: line 23: unknown GID 0
/etc/group: line 24: unknown GID 0
/etc/group: line 25: unknown GID 0
/etc/group: line 26: unknown GID 0
/etc/group: line 27: unknown GID 0
/etc/group: line 28: unknown GID 0
/etc/group: line 29: unknown GID 0
/etc/group: line 30: unknown GID 0
/etc/group: line 31: unknown GID 0
/etc/group: line 32: unknown GID 0
/etc/group: line 33: unknown GID 0
/etc/group: line 34: unknown GID 0
/etc/group: line 35: unknown GID 0
/etc/group: line 36: unknown GID 0
/etc/group: line 37: unknown GID 0
/etc/group: line 38: unknown GID 0
/etc/group: line 39: unknown GID 0
/etc/group: line 40: unknown GID 0
/etc/group: line 41: unknown GID 0
/etc/group: line 42: unknown GID 0
/etc/group: line 43: unknown GID 0
/etc/group: line 44: unknown GID 0
/etc/group: line 45: unknown GID 0
/etc/group: line 46: unknown GID 0
/etc/group: line 47: unknown GID 0
/etc/group: line 48: unknown GID 0
/etc/group: line 49: unknown GID 0
/etc/group: line 50: unknown GID 0
/etc/group: line 51: unknown GID 0
/etc/group: line 52: unknown GID 0
/etc/group: line 53: unknown GID 0
/etc/group: line 54: unknown GID 0
/etc/group: line 55: unknown GID 0
/etc/group: line 56: unknown GID 0
/etc/group: line 57: unknown GID 0
/etc/group: line 58: unknown GID 0
/etc/group: line 59: unknown GID 0
/etc/group: line 60: unknown GID 0
```

The output indicates that there are issues with the group file, specifically that there are unknown group IDs (GIDs) on several lines.

To fix these issues, we can use the `grpck` command with the `-r` option to repair the group file:

```bash
sudo grpck -r
```

Example output:

```
/etc/group: line 23: unknown GID 0 - fixed
/etc/group: line 24: unknown GID 0 - fixed
/etc/group: line 25: unknown GID 0 - fixed
/etc/group: line 26: unknown GID 0 - fixed
/etc/group: line 27: unknown GID 0 - fixed
/etc/group: line 28: unknown GID 0 - fixed
/etc/group: line 29: unknown GID 0 - fixed
/etc/group: line 30: unknown GID 0 - fixed
/etc/group: line 31: unknown GID 0 - fixed
/etc/group: line 32: unknown GID 0 - fixed
/etc/group: line 33: unknown GID 0 - fixed
/etc/group: line 34: unknown GID 0 - fixed
/etc/group: line 35: unknown GID 0 - fixed
/etc/group: line 36: unknown GID 0 - fixed
/etc/group: line 37: unknown GID 0 - fixed
/etc/group: line 38: unknown GID 0 - fixed
/etc/group: line 39: unknown GID 0 - fixed
/etc/group: line 40: unknown GID 0 - fixed
/etc/group: line 41: unknown GID 0 - fixed
/etc/group: line 42: unknown GID 0 - fixed
/etc/group: line 43: unknown GID 0 - fixed
/etc/group: line 44: unknown GID 0 - fixed
/etc/group: line 45: unknown GID 0 - fixed
/etc/group: line 46: unknown GID 0 - fixed
/etc/group: line 47: unknown GID 0 - fixed
/etc/group: line 48: unknown GID 0 - fixed
/etc/group: line 49: unknown GID 0 - fixed
/etc/group: line 50: unknown GID 0 - fixed
/etc/group: line 51: unknown GID 0 - fixed
/etc/group: line 52: unknown GID 0 - fixed
/etc/group: line 53: unknown GID 0 - fixed
/etc/group: line 54: unknown GID 0 - fixed
/etc/group: line 55: unknown GID 0 - fixed
/etc/group: line 56: unknown GID 0 - fixed
/etc/group: line 57: unknown GID 0 - fixed
/etc/group: line 58: unknown GID 0 - fixed
/etc/group: line 59: unknown GID 0 - fixed
/etc/group: line 60: unknown GID 0 - fixed
```

The output shows that the `grpck` command has fixed the issues in the group file by assigning the correct group IDs.

Now, let's verify the group file contents again:

```bash
cat /etc/group
```

The output should show a valid group file without any issues.
