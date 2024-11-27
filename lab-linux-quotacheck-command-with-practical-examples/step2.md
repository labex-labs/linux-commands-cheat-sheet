# Enable Quota on a Filesystem

In this step, we will enable quota on a filesystem. Quota allows you to set limits on the amount of disk space and number of inodes that individual users or groups can consume.

First, let's create a new directory for our filesystem:

```bash
sudo mkdir /mnt/quota
```

Next, we need to enable quota on the new filesystem. We'll use the `quotaon` command for this:

```bash
sudo quotaon -v /mnt/quota
```

Example output:

```
/mnt/quota: Quotas turned on
```

The `-v` option tells `quotaon` to display the filesystem where quota is being enabled.

Now, let's create a new file in the `/mnt/quota` directory to test the quota functionality:

```bash
cd /mnt/quota
sudo touch test_file.txt
```

Example output:

```

```

No output means the file was created successfully.
