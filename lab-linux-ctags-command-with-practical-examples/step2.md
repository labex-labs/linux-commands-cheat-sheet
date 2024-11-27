# Generating Tags for a C/C++ Project

In this step, you will learn how to generate tags for a C/C++ project using the ctags command.

First, let's create a simple C project in the `~/project` directory:

```bash
cd ~/project
mkdir myproject
cd myproject
touch main.c
```

Open the `main.c` file in the nano editor and add the following code:

```c
#include <stdio.h>

int main() {
    printf("Hello, World!\n");
    return 0;
}
```

Save and close the file.

Now, let's generate the tags for this project:

```bash
ctags -R .
```

This will create a `tags` file in the current directory, containing information about the symbols (functions, variables, etc.) defined in the source code.

You can view the contents of the `tags` file:

```bash
cat tags
```

Example output:

```
!_TAG_FILE_FORMAT	2	/extended format; --format=1 will not append ;" to lines/
!_TAG_FILE_SORTED	1	/0=unsorted, 1=sorted, 2=foldcase/
!_TAG_PROGRAM_AUTHOR	Universal Ctags Team	//
!_TAG_PROGRAM_NAME	Universal Ctags	/Derived from Exuberant Ctags/
!_TAG_PROGRAM_URL	https://ctags.io/	/official site/
!_TAG_PROGRAM_VERSION	0.0.0	/a3c87ab/
main	main.c	/^int main() {$/;"	f
```

The tags file contains information about the `main` function defined in the `main.c` file.
