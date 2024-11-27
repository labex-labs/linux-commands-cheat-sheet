# Verify the Effectiveness of the sync Command

In this final step, we will verify the effectiveness of the `sync` command by simulating a system crash and observing the behavior of the file system.

First, let's create a new file in the `~/project` directory:

```bash
touch ~/project/important_data.txt
```

Now, let's add some content to the file:

```bash
echo "This is important data that needs to be preserved." > ~/project/important_data.txt
```

To simulate a system crash, we can use the `echo` command to trigger a kernel panic, which will forcefully reboot the system:

```bash
sudo sh -c "echo c > /proc/sysrq-trigger"
```

After the system reboots, let's check the contents of the `important_data.txt` file:

```bash
cat ~/project/important_data.txt
```

Example output:

```
This is important data that needs to be preserved.
```

As you can see, the contents of the file have been preserved, even after the simulated system crash. This is because the `sync` command we executed in the previous step ensured that the file system data was synchronized to the underlying storage media before the system went down.

If we had not used the `sync` command, there would be a risk of data loss or corruption, as the in-memory changes might not have been written to the disk before the system crashed.

By verifying the effectiveness of the `sync` command, you can ensure that your file system data is properly synchronized and protected against unexpected system failures.
