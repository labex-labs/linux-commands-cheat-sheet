# Use quotacheck Command to Check Quota Information

In this final step, we will use the `quotacheck` command to check the quota information for the `/mnt/quota` filesystem.

First, let's run the `quotacheck` command to scan the `/mnt/quota` filesystem:

```bash
sudo quotacheck -avugm /mnt/quota
```

Example output:

```
quotacheck: Scanning /dev/mapper/ubuntu--vg-root [/]
quotacheck: Checked 23836 directories and 189324 files
quotacheck: /mnt/quota: checked 1 directories and 1 files
```

The `quotacheck` command performs the following actions:

- `-a`: Checks all filesystems
- `-v`: Displays verbose output
- `-u`: Updates quota information files
- `-g`: Checks group quotas
- `-m`: Checks user quotas

Next, let's use the `repquota` command to display the quota information for the `/mnt/quota` filesystem:

```bash
sudo repquota -a
```

Example output:

```
*** Report for user quotas on device /dev/mapper/ubuntu--vg-root
Block grace time: 7days; Inode grace time: 7days
                        Block limits                File limits
User            used    soft    hard  grace    used  soft  hard  grace
----------------------------------------------------------------------
root       --       0       0       0              1     0     0
labex      --       0       0       0              1     0     0

*** Report for group quotas on device /dev/mapper/ubuntu--vg-root
Block grace time: 7days; Inode grace time: 7days
                        Block limits                File limits
Group           used    soft    hard  grace    used  soft  hard  grace
----------------------------------------------------------------------
root       --       0       0       0              1     0     0
```

The `repquota` command displays the current quota information for the specified filesystem. In this case, we're using the `-a` option to display the quota information for all filesystems.
