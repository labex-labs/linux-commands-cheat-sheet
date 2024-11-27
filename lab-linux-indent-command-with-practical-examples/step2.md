# Format C/C++ Source Code with the indent Command

In this step, you will learn how to use the `indent` command to format C/C++ source code.

First, let's create a sample C file to work with:

```
$ cd ~/project
$ nano sample.c
```

Add the following content to the `sample.c` file:

```c
#include <stdio.h>

int main() {
    printf("Hello, World!\n");
    return 0;
}
```

Now, let's use the `indent` command to format the source code:

```
$ indent sample.c
```

This will create a new file named `sample.c.indent` with the formatted code. You can also specify the output file directly:

```
$ indent sample.c -o formatted_sample.c
```

This will create a new file named `formatted_sample.c` with the formatted code.

Example output:

```
$ cat formatted_sample.c
#include <stdio.h>

int main() {
    printf("Hello, World!\n");
    return 0;
}
```

As you can see, the `indent` command has automatically indented the code and formatted it according to the default settings.

You can also customize the formatting by using various options. For example, to use the "Linux" style of formatting, you can run:

```
$ indent -linux sample.c -o formatted_sample.c
```

This will apply the "Linux" coding style to the formatted code.

In the next step, you will learn how to further customize the `indent` command options to fit your specific coding style.
