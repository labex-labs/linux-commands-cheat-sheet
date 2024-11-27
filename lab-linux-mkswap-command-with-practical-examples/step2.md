# Create a Swap File Using the mkswap Command

In this step, we will create a swap file using the `mkswap` command.

First, let's create a 2GB swap file in the `~/project` directory:

```bash
sudo dd if=/dev/zero of=~/project/swapfile bs=1024k count=2048
```

This command will create a 2GB file named `swapfile` in the `~/project` directory.

Next, we need to initialize the swap file using the `mkswap` command:

```bash
sudo mkswap ~/project/swapfile
```

Example output:

```
Setting up swapspace version 1, size = 2 GiB (2147479552 bytes)
no label, UUID=a4a4d2d9-6f1f-4fca-9c2d-7f8d5c3d4c2a
```

The `mkswap` command sets up the swap file and assigns a UUID to it. This UUID will be used to reference the swap file later.

Now that the swap file is created and initialized, we can proceed to the next step to enable it.
