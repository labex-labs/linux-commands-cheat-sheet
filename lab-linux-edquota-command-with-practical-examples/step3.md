# Managing User Disk Quota with edquota Command

In this step, we will learn how to manage user disk quotas using the `edquota` command.

First, let's create a new user named `alice` and add her to the file system we created in the previous step:

```bash
sudo useradd -m alice
sudo usermod -a -G labex alice
sudo chown -R alice:labex /quota_fs
```

Now, we can use the `edquota` command to set disk quotas for the `alice` user:

```bash
sudo edquota -u alice
```

This will open the quota editor in the default text editor (usually `nano`). You should see something like this:

```
Disk quotas for user alice (uid 1001):
  Filesystem                   blocks       soft       hard     inodes     soft     hard
  /quota_fs                        0       50000      60000          0       500       600
```

Here, we can set the following quota limits for the `alice` user:

- Soft block limit: 50,000 blocks
- Hard block limit: 60,000 blocks
- Soft inode limit: 500 inodes
- Hard inode limit: 600 inodes

After making the changes, save and exit the editor.

To verify the quota settings, we can use the `repquota` command:

```bash
sudo repquota /quota_fs
```

Example output:

```
*** Report for user quotas on device /quota_fs
-----------------------------------------------------------------------------
User            used    soft    hard  grace
-----------------------------------------------------------------------------
root      --      0       0       0
alice     --      0   50000   60000
labex     --      0       0       0
```

The output shows that the `alice` user has a soft limit of 50,000 blocks and a hard limit of 60,000 blocks.

In the next step, we will verify the steps you have learned in this lab.
