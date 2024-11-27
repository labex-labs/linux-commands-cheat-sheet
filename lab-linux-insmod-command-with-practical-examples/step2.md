# Compiling a Kernel Module

In this step, we will learn how to compile a kernel module from source code.

First, let's create a new kernel module file named `hello2.c` in the `~/project` directory with the following content:

```c
#include <linux/module.h>
#include <linux/kernel.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Your Name");
MODULE_DESCRIPTION("Another simple kernel module");

int init_module(void) {
    printk(KERN_INFO "Hello, from the second kernel module!\n");
    return 0;
}

void cleanup_module(void) {
    printk(KERN_INFO "Goodbye, from the second kernel module!\n");
}
```

This module is similar to the one we created in the previous step, but with a different message.

Now, let's compile the `hello2.c` module:

```bash
gcc -Wall -DMODULE -D__KERNEL__ -I/lib/modules/$(uname -r)/build/include -c hello2.c
```

The compilation process is the same as before, with the exception that we're now compiling the `hello2.c` file instead of `hello.c`.

After the compilation, you should see the `hello2.o` object file in the `~/project` directory.
