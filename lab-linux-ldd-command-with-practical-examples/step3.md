# Troubleshoot Missing Dependencies

In this step, we will learn how to troubleshoot missing dependencies using the `ldd` command.

Let's continue with the example from the previous step. We have a `hello` binary that depends on the `libmylib.so` dynamic library, but the library is not found.

First, let's try to locate the missing library:

```bash
$ sudo find / -name libmylib.so
/usr/local/lib/libmylib.so
```

The library is located in the `/usr/local/lib` directory. Now, let's try running the `hello` binary again:

```bash
$ ldd hello
        linux-vdso.so.1 (0x00007ffff7ffd000)
        libmylib.so => /usr/local/lib/libmylib.so (0x00007f7f7a5f0000)
        libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f7f7a7c0000)
        /lib64/ld-linux-x86-64.so.2 => /lib64/ld-linux-x86-64.so.2 (0x00007f7f7a8e0000)
$ ./hello
Hello, World!
```

The `ldd` command now shows that the `libmylib.so` library is found, and the `hello` binary runs successfully.

Example output:

```
        linux-vdso.so.1 (0x00007ffff7ffd000)
        libmylib.so => /usr/local/lib/libmylib.so (0x00007f7f7a5f0000)
        libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f7f7a7c0000)
        /lib64/ld-linux-x86-64.so.2 => /lib64/ld-linux-x86-64.so.2 (0x00007f7f7a8e0000)
```

In this example, we were able to troubleshoot the missing dependency by locating the `libmylib.so` library and ensuring that it was available in the system's library search path.

The `ldd` command is a valuable tool for identifying and troubleshooting missing dependencies, which is essential for effective software management and deployment.
