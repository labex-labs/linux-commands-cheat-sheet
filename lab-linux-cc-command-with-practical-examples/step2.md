# Compile a Simple C Program Using the cc Command

In this step, you will learn how to compile a simple C program using the `cc` command.

First, let's create a simple C program called `hello.c` in the `~/project` directory:

```c
#include <stdio.h>

int main() {
    printf("Hello, World!\n");
    return 0;
}
```

Now, let's compile this program using the `cc` command:

```
cd ~/project
cc -o hello hello.c
```

Example output:

```

```

The `-o hello` option specifies the name of the output executable file, which will be `hello`. The `hello.c` file is the input source code file.

After the compilation is complete, you can run the executable:

```
./hello
```

Example output:

```
Hello, World!
```

You should see the "Hello, World!" message printed to the console.
