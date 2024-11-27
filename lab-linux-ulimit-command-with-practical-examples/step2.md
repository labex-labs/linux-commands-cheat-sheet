# Adjust Resource Limits for Processes Using ulimit

In this step, we will learn how to adjust resource limits for processes using the `ulimit` command. Resource limits are important for controlling the system resources used by processes, such as CPU time, memory usage, and file size.

First, let's create a simple script that will exceed the default resource limits:

```bash
#!/bin/bash

# Create a 1 GB file
dd if=/dev/zero of=big_file.txt bs=1M count=1024
```

Now, let's run the script and see what happens:

```
$ ./create_big_file.sh
dd: error writing 'big_file.txt': File size limit exceeded
```

The script failed because the default file size limit is too low. We can use the `ulimit` command to increase the file size limit before running the script:

```
$ ulimit -f 2097152  # Set the file size limit to 2 GB
$ ./create_big_file.sh
```

This time, the script should be able to create the 1 GB file without any issues.

You can also use the `ulimit` command to set limits on other resources, such as the maximum number of open files, the maximum size of the stack, and the maximum CPU time. For example:

```
$ ulimit -n 4096  # Set the maximum number of open files to 4096
$ ulimit -s 8192  # Set the maximum stack size to 8 MB
$ ulimit -t 300   # Set the maximum CPU time to 300 seconds
```

Remember that the changes made using `ulimit` only affect the current shell session and any processes launched from it. To make the changes persistent, you can add the `ulimit` commands to your shell's startup script (e.g., `.bashrc` or `.zshrc`).
