# Enable the Swap File and Verify Its Usage

In this final step, we will enable the swap file we created in the previous step and verify its usage.

First, let's enable the swap file using the `swapon` command:

```bash
sudo swapon ~/project/swapfile
```

Example output:

```
[sudo] password for labex:
```

You may be prompted for the sudo password, enter the password (if required) to enable the swap file.

Now, let's verify that the swap file is enabled and being used by the system:

```bash
sudo swapon --show
```

Example output:

```
NAME      TYPE SIZE USED PRIO
/dev/sda5 partition 2G 0B -2
/home/labex/project/swapfile file 2G 0B -3
```

The output shows that the swap file `/home/labex/project/swapfile` is now enabled and available for use by the system.

To further verify the swap usage, we can use the `free` command:

```bash
free -h
```

Example output:

```
              total        used        free      shared  buff/cache   available
Mem:           1.9Gi       561Mi       977Mi        17Mi       375Mi       1.2Gi
Swap:          2.0Gi         0B        2.0Gi
```

The output shows that the 2GB swap file is available and currently not in use (0B used).

Now that the swap file is enabled and verified, you have successfully completed this lab.
