# Summary

In this lab, we first learned about the purpose and syntax of the `ulimit` command in Linux, which is used to set or display resource limits for the current shell session or for processes launched from the current shell. We explored common options such as setting the maximum size of core files, data segment, and open file descriptors. Next, we demonstrated how to adjust resource limits for processes using the `ulimit` command, as it is important for controlling the system resources used by processes. We created a script that attempted to create a large file, but failed due to the default file size limit, and then used `ulimit` to increase the file size limit to allow the script to complete successfully.