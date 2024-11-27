# Configure and Build a Simple C Program Using autoconf

In this step, we will use the `autoconf` command to configure and build a simple C program.

First, let's create a simple C program named `hello.c`:

```c
#include <stdio.h>

int main() {
    printf("Hello, world!\n");
    return 0;
}
```

Next, we'll create the `configure.ac` file, which is used by `autoconf` to generate the `configure` script:

```bash
cat > configure.ac << EOF
AC_INIT([hello], [1.0], [your@email.com])
AC_PROG_CC
AC_OUTPUT([Makefile])
EOF
```

Now, let's generate the `configure` script:

```bash
autoconf
```

Example output:

```
configure.ac:1: installing './install-sh'
configure.ac:1: installing './missing'
```

With the `configure` script generated, we can now run it to configure the project:

```bash
./configure
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
configure: creating ./config.status
config.status: creating Makefile
```

Finally, we can build the program using `make`:

```bash
make
```

Example output:

```
make  all-am
make[1]: Entering directory '/home/labex/project'
gcc -g -O2 -o hello hello.c
make[1]: Leaving directory '/home/labex/project'
```

The `hello` executable is now built and ready to run.
