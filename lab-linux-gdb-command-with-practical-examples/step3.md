# Debugging a Multithreaded C Program with gdb

In this step, we will use gdb to debug a multithreaded C program that has a race condition.

First, let's create a new C file named `multithreaded.c` in the `~/project` directory with the following content:

```c
#include <stdio.h>
#include <pthread.h>

int shared_variable = 0;

void* thread_function(void* arg) {
    for (int i = 0; i < 1000000; i++) {
        shared_variable++;
    }
    return NULL;
}

int main() {
    pthread_t thread1, thread2;

    pthread_create(&thread1, NULL, thread_function, NULL);
    pthread_create(&thread2, NULL, thread_function, NULL);

    pthread_join(thread1, NULL);
    pthread_join(thread2, NULL);

    printf("Final value of shared_variable: %d\n", shared_variable);
    return 0;
}
```

This program creates two threads that both increment a shared variable 1,000,000 times. Due to a race condition, the final value of the shared variable may not be the expected 2,000,000.

Now, let's compile the program with the `-g` flag to include debugging symbols:

```bash
gcc -g -o multithreaded multithreaded.c -lpthread
```

Next, start the gdb debugger and load the compiled program:

```bash
gdb ./multithreaded
```

In the gdb prompt, set a breakpoint at the beginning of the `thread_function`:

```
(gdb) break thread_function
Breakpoint 1 at 0x11b6: file multithreaded.c, line 7.
```

Now, run the program:

```
(gdb) run
Starting program: /home/labex/project/multithreaded
```

When the program hits the breakpoint, you can inspect variables, step through the code, and debug the race condition:

```
Breakpoint 1, thread_function (arg=0x0) at multithreaded.c:7
7       for (int i = 0; i < 1000000; i++) {
(gdb) print shared_variable
$1 = 0
(gdb) step
8           shared_variable++;
(gdb) print shared_variable
$2 = 1
```

By stepping through the code and inspecting the shared variable, you can observe the race condition and identify the issue in the multithreaded program.
