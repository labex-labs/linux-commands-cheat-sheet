# Use Makefile Variables and Targets

In this step, you will learn how to use variables and targets in a Makefile to make your build process more flexible and maintainable.

Let's start by modifying the Makefile we created in the previous step. Open the `Makefile` in the `~/project` directory:

```
nano ~/project/Makefile
```

Update the Makefile with the following content:

```makefile
CC = gcc
CFLAGS = -Wall -Wextra -O2

all: hello

hello: hello.c
    $(CC) $(CFLAGS) -o hello hello.c
```

In this updated Makefile, we've introduced two variables:

1. `CC`: This variable stores the name of the C compiler to use. We've set it to `gcc`.
2. `CFLAGS`: This variable stores the compilation flags to use. We've set it to `-Wall -Wextra -O2`, which enables additional compiler warnings and optimizes the compiled code.

We've also updated the compilation command to use these variables:

```makefile
    $(CC) $(CFLAGS) -o hello hello.c
```

This makes the Makefile more flexible, as you can easily change the compiler or compilation flags by modifying the variable values.

Now, let's try building the `hello` program again using the updated Makefile:

```
make
```

Example output:

```
gcc -Wall -Wextra -O2 -o hello hello.c
```

The `make` command has used the variables defined in the Makefile to compile the `hello.c` file.

You can also define additional targets in the Makefile. For example, let's add a `clean` target to remove the compiled `hello` executable:

```makefile
CC = gcc
CFLAGS = -Wall -Wextra -O2

all: hello

hello: hello.c
    $(CC) $(CFLAGS) -o hello hello.c

clean:
    rm -f hello
```

Now, you can run `make clean` to remove the `hello` executable:

```
make clean
```

Example output:

```
rm -f hello
```

The `make clean` command has removed the `hello` executable.
