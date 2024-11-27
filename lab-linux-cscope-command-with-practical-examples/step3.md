# Perform Source Code Navigation with cscope

In this step, we will learn how to use cscope to navigate through source code effectively.

First, let's create a new C file named `helper.c` in the `~/project/cscope-demo` directory:

```bash
nano ~/project/cscope-demo/helper.c
```

Add the following content to the `helper.c` file:

```c
#include <stdio.h>

void printMessage(const char* message) {
    printf("%s\n", message);
}
```

Save the file and exit the text editor.

Now, let's rebuild the cscope database to include the new file:

```bash
cd ~/project/cscope-demo
cscope -b
```

Example output:

```
cscope 15.9 started.
Building the database...
2 files and directories scanned in 0.00 seconds.
```

Let's try some cscope navigation commands:

1. Jump to the definition of the `printMessage` function:

   ```bash
   cscope -d -L2printMessage
   ```

   This will open the `helper.c` file and position the cursor at the definition of the `printMessage` function.

2. Find all the references to the `printMessage` function:

   ```bash
   cscope -d -L3printMessage
   ```

   This will display all the locations where the `printMessage` function is called.

3. Find the callers of the `main` function:

   ```bash
   cscope -d -L7main
   ```

   This will display all the functions that call the `main` function.

4. Find the files that include the `stdio.h` header:
   ```bash
   cscope -d -L4stdio.h
   ```
   This will display all the files that include the `stdio.h` header.

The cscope navigation commands allow you to quickly jump between related code elements, making it easier to understand and navigate complex codebases.
