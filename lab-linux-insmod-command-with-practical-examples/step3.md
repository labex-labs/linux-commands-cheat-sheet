# Inserting a Kernel Module with insmod

In this step, we will learn how to insert the compiled kernel module into the running kernel using the `insmod` command.

First, let's make sure that the `hello2.o` module is compiled and available in the `~/project` directory:

```bash
ls -l ~/project/hello2.o
```

Example output:

```
-rw-r--r-- 1 labex labex 16384 Apr 11 12:34 /home/labex/project/hello2.o
```

Now, we can use the `insmod` command to insert the `hello2.o` module into the kernel:

```bash
sudo insmod ~/project/hello2.o
```

Example output:

```

```

The `insmod` command loads the `hello2.o` module into the kernel. You should see the "Hello, from the second kernel module!" message in the system logs (e.g., `dmesg`).

To verify that the module is loaded, run:

```bash
lsmod | grep hello2
```

Example output:

```
hello2                 16384  0
```

The output shows that the `hello2` module is now loaded in the kernel.
