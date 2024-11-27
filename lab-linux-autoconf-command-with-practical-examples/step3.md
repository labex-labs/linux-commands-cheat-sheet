# Customize autoconf Configuration Files for Complex Projects

In this step, we will explore how to customize the `autoconf` configuration files for more complex projects.

While the previous steps covered a simple C program, real-world projects often have more complex requirements, such as supporting multiple platforms, checking for dependencies, and customizing the build process.

Let's start by creating a more complex project structure:

```bash
mkdir -p myproject/src
cat > myproject/src/main.c << EOF
#include <stdio.h>
#include "myheader.h"

int main() {
    printf("Hello, %s!\n", get_greeting());
    return 0;
}
EOF

cat > myproject/src/myheader.h << EOF
#ifndef MYHEADER_H
#define MYHEADER_H

char* get_greeting();

#endif
```

Now, we'll create the `configure.ac` file to handle this more complex project:

```bash
cd myproject
cat > configure.ac << EOF
AC_INIT([myproject], [1.0], [your@email.com])
AC_CONFIG_SRCDIR([src/main.c])
AC_CONFIG_HEADERS([config.h])
AC_PROG_CC
AC_CHECK_HEADERS([stdlib.h])
AC_OUTPUT([Makefile src/Makefile])
EOF
```

The key changes in this `configure.ac` file are:

- `AC_CONFIG_SRCDIR([src/main.c])`: Specifies the location of the main source file.
- `AC_CONFIG_HEADERS([config.h])`: Generates a `config.h` header file that can be used by the project.
- `AC_CHECK_HEADERS([stdlib.h])`: Checks for the existence of the `stdlib.h` header file.
- `AC_OUTPUT([Makefile src/Makefile])`: Generates the Makefiles for the project.

Now, let's generate the `configure` script and build the project:

```bash
autoconf
./configure
make
```

Example output:

```
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for a thread-safe mkdir -p... /bin/mkdir -p
checking for gawk... no
checking for mawk... mawk
checking whether make sets $(MAKE)... yes
checking whether to enable maintainer-specific portions of Makefiles... no
checking for gcc... gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables...
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc accepts -g... yes
checking for stdlib.h... yes
configure: creating ./config.status
config.status: creating Makefile
config.status: creating src/Makefile
make  all-recursive
make[1]: Entering directory '/home/labex/myproject'
Making all in src
make[2]: Entering directory '/home/labex/myproject/src'
gcc -DHAVE_CONFIG_H -I. -g -O2 -c main.c
gcc -g -O2 -o myproject main.o
make[2]: Leaving directory '/home/labex/myproject/src'
make[1]: Leaving directory '/home/labex/myproject'
```

The generated `configure` script now handles the more complex project structure, including the `myheader.h` header file and the `config.h` header file generated by `autoconf`.