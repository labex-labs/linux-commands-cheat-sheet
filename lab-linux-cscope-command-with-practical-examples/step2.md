# Understand the Basics of cscope

In this step, we will learn the basic usage and features of the cscope tool.

First, let's create a new directory for our project and navigate to it:

```bash
mkdir ~/project/cscope-demo
cd ~/project/cscope-demo
```

Now, let's create a simple C program file named `main.c` with some sample code:

```bash
nano main.c
```

Add the following content to the `main.c` file:

```c
#include <stdio.h>

int main() {
    printf("Hello, cscope!\n");
    return 0;
}
```

Save the file and exit the text editor.

Next, we will generate the cscope database for the current directory:

```bash
cscope -b
```

Example output:

```
cscope 15.9 started.
Building the database...
1 files and directories scanned in 0.00 seconds.
```

The `-b` option tells cscope to build the database for the current directory.

Now, let's explore some basic cscope commands:

1. Search for a symbol (e.g., `main`):

   ```bash
   cscope -d -L1main
   ```

   This will display all the occurrences of the `main` function in the source code.

2. Search for a definition (e.g., `main`):

   ```bash
   cscope -d -L2main
   ```

   This will display the definition of the `main` function.

3. Search for a called function (e.g., `printf`):

   ```bash
   cscope -d -L3printf
   ```

   This will display all the locations where the `printf` function is called.

4. Search for a string (e.g., "Hello, cscope!"):
   ```bash
   cscope -d -L0"Hello, cscope!"
   ```
   This will display all the occurrences of the string "Hello, cscope!" in the source code.

The `-d` option tells cscope to display the results in a user-friendly format.
