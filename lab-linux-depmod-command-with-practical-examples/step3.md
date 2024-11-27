# Troubleshoot Module Dependencies with depmod

In this final step, you will learn how to use the `depmod` command to troubleshoot issues related to kernel module dependencies.

Let's start by creating a custom kernel module that has a dependency on another module. We'll use the `hello_world` module as an example:

```bash
# Create a new directory for the module
mkdir ~/project/hello_world
cd ~/project/hello_world

# Create the module source file
cat << EOF > hello_world.c
#include <linux/module.h>
#include <linux/kernel.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Your Name");
MODULE_DESCRIPTION("A simple hello world kernel module");

static int __init hello_world_init(void)
{
    printk(KERN_INFO "Hello, World!\n");
    return 0;
}

static void __exit hello_world_exit(void)
{
    printk(KERN_INFO "Goodbye, World!\n");
}

module_init(hello_world_init);
module_exit(hello_world_exit);
EOF

# Compile the module
make -C /lib/modules/$(uname -r)/build M=$(pwd) modules
```

Now, let's create a second module that depends on the `hello_world` module:

```bash
# Create the dependent module source file
cat << EOF > hello_dependent.c
#include <linux/module.h>
#include <linux/kernel.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Your Name");
MODULE_DESCRIPTION("A module that depends on the hello_world module");
MODULE_DEPENDS_ON("hello_world");

static int __init hello_dependent_init(void)
{
    printk(KERN_INFO "Hello Dependent Module!\n");
    return 0;
}

static void __exit hello_dependent_exit(void)
{
    printk(KERN_INFO "Goodbye Dependent Module!\n");
}

module_init(hello_dependent_init);
module_exit(hello_dependent_exit);
EOF

# Compile the dependent module
make -C /lib/modules/$(uname -r)/build M=$(pwd) modules
```

Now, let's try to load the `hello_dependent` module:

```bash
sudo insmod hello_dependent.ko
```

Example output:

```
insmod: ERROR: could not insert module hello_dependent.ko: Unknown symbol in module
```

The error message indicates that the `hello_dependent` module is unable to find the `hello_world` module, which it depends on.

To troubleshoot this issue, we can use the `depmod` command to update the module dependency information:

```bash
sudo depmod -a
```

Now, let's try loading the `hello_dependent` module again:

```bash
sudo insmod hello_dependent.ko
```

This time, the module should load successfully, and you should see the "Hello Dependent Module!" message in the kernel logs.

In this step, you learned how to use the `depmod` command to troubleshoot issues related to kernel module dependencies. By updating the module dependency information, you can ensure that all required modules are loaded correctly, allowing your custom modules to function as expected.
