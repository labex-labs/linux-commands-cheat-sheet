# Introduction to the insmod Command

In this step, we will explore the `insmod` command in Linux, which is used to insert a kernel module into the running kernel. Kernel modules are pieces of code that can be loaded and unloaded into the kernel as needed, providing additional functionality or drivers.

First, let's check the current kernel version and the available kernel modules:

```bash
uname -r
lsmod
```

Example output:

```
5.15.0-58-generic
Module                  Size  Used by
nvme_core              102400  1
pci_stub                16384  1
vboxpci                 24576  0
vboxnetadp              45056  0
vboxnetflt              49152  0
vboxdrv               1028096  3 vboxnetadp,vboxnetflt,vboxpci
```

The `lsmod` command lists the currently loaded kernel modules. We can see that there are several modules related to VirtualBox, which is a common virtualization software.

Next, let's create a simple kernel module. Create a new file named `hello.c` in the `~/project` directory with the following content:

```c
#include <linux/module.h>
#include <linux/kernel.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Your Name");
MODULE_DESCRIPTION("A simple kernel module");

int init_module(void) {
    printk(KERN_INFO "Hello, kernel!\n");
    return 0;
}

void cleanup_module(void) {
    printk(KERN_INFO "Goodbye, kernel!\n");
}
```

This module simply prints a "Hello, kernel!" message when it's loaded and a "Goodbye, kernel!" message when it's unloaded.

Now, let's compile the kernel module:

```bash
sudo apt-get install -y linux-headers-$(uname -r)
gcc -Wall -DMODULE -D__KERNEL__ -I/lib/modules/$(uname -r)/build/include -c hello.c
```

The `linux-headers-$(uname -r)` package contains the header files needed to compile kernel modules for the current kernel version. The `gcc` command compiles the `hello.c` file into an object file `hello.o`.

With the compiled kernel module, we can now use the `insmod` command to insert it into the running kernel:

```bash
sudo insmod hello.o
```

Example output:

```

```

The `insmod` command loads the `hello.o` module into the kernel. You should see the "Hello, kernel!" message in the system logs (e.g., `dmesg`).

To verify that the module is loaded, run:

```bash
lsmod | grep hello
```

Example output:

```
hello                  16384  0
```

The output shows that the `hello` module is now loaded in the kernel.
