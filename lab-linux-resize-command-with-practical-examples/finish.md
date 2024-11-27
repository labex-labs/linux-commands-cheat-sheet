# Summary

In this lab, we first explored the Linux `resize` command, which is used to resize partitions and logical volumes. We learned the basic syntax of the `resize` command and some common options, such as `-f` to force the resize operation, `-p` to print the new size, and `-v` for verbose output. We then saw examples of using the `resize` command to resize a partition to 20GB and an LVM logical volume to 50GB.

Next, we created a new partition on the virtual disk in our Docker container using the `fdisk` command. This set the stage for the next step, where we will learn how to resize the newly created partition using the `resize` command.
