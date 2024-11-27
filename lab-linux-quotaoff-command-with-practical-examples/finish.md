# Summary

In this lab, you learned about disk quotas in Linux, which are a mechanism to limit the amount of disk space and the number of files that a user or a group can consume on a file system. You created the necessary quota files, enabled the quota system by editing the `/etc/fstab` file, and remounted the file system. You then learned how to enable disk quotas for individual users by using the `edquota` command to set soft and hard limits for disk space and the number of files.

After enabling disk quotas, you can use the `quotaoff` command to disable the quota system if needed. This command can be useful in scenarios where you need to temporarily suspend the quota system for maintenance or other purposes.
