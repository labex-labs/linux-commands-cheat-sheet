# Manage Disk Quota Limits for Multiple Users

In this step, we will learn how to manage disk quota limits for multiple users using the `repquota` and `setquota` commands.

First, let's create two additional users named `user1` and `user2`:

```bash
sudo useradd user1
sudo useradd user2
```

Now, let's set disk quota limits for both users:

```bash
sudo setquota -u user1 50M 100M 0 0 /
sudo setquota -u user2 75M 150M 0 0 /
```

This sets a soft limit of 50MB and a hard limit of 100MB for `user1`, and a soft limit of 75MB and a hard limit of 150MB for `user2` on the root filesystem (`/`).

To verify the disk quota limits for both users, we can use the `repquota` command:

```bash
sudo repquota -u user1
sudo repquota -u user2
```

Example output:

```
User            used    soft    hard  grace
---------------------------------------------
user1         0        50000   100000
user2         0        75000   150000
```

If we need to modify the disk quota limits for either user, we can use the `setquota` command again:

```bash
sudo setquota -u user1 75M 150M 0 0 /
sudo setquota -u user2 100M 200M 0 0 /
```

This updates the disk quota limits for `user1` to a soft limit of 75MB and a hard limit of 150MB, and for `user2` to a soft limit of 100MB and a hard limit of 200MB.
