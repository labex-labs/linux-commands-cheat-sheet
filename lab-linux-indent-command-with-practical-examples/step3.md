# Customize indent Command Options for Specific Coding Styles

In this step, you will learn how to customize the `indent` command options to format C/C++ source code according to specific coding styles.

The `indent` command provides a wide range of options to customize the formatting. Let's explore some common options and how they can be used:

1. **Brace Placement**:

   - `-br` (default): Put braces on "begin" lines.
   - `-brs`: Put braces on "begin" lines with a space.
   - `-bl`: Put braces on "begin" lines.

2. **Indentation**:

   - `-i<number>`: Set indentation level to `<number>` spaces.
   - `-ci<number>`: Set continuation indentation to `<number>` spaces.

3. **Blank Lines**:

   - `-nbad`: Do not break after boolean and arithmetic operators.
   - `-nbap`: Do not break function parameters.
   - `-nbc`: Do not break function calls.

4. **Comment Formatting**:
   - `-c<number>`: Set comment indentation to `<number>` columns.
   - `-cd<number>`: Set the maximum length of comments to `<number>` columns.

Let's try an example to format the `sample.c` file using the "GNU" coding style:

```
$ indent -gnu sample.c -o formatted_sample.c
```

This will format the source code using the "GNU" style, which follows the GNU coding standards.

Example output:

```c
#include <stdio.h>

int
main ()
{
  printf ("Hello, World!\n");
  return 0;
}
```

As you can see, the `indent` command has applied the "GNU" coding style to the formatted code, including the brace placement and indentation.

You can explore the available options and experiment with different coding styles to find the one that best fits your project's requirements.
