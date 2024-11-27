# Summary

In this lab, we explored the Linux `losetup` command, which is used to associate a regular file or block device with a loopback device. We learned how to create a loopback device, attach a file to it, and then detach the device. Specifically, we created a 100 MB file using the `dd` command and attached it to the `/dev/loop0` device. We also learned how to list the currently active loopback devices on the system using the `losetup -a` command.

The lab provided practical examples of how to use the `losetup` command for various tasks, such as creating, attaching, and detaching loopback devices. This knowledge can be useful for tasks like mounting disk images, working with virtual machines, or performing other operations that require the use of loopback devices.
