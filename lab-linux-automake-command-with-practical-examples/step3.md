# Customizing Automake Configuration

In this step, we will customize the Automake configuration to add more functionality to our project.

First, let's create a simple C program that we will build using Automake. Create a new file called `main.c` in the `~/project/automate-demo` directory with the following content:

```c
#include <stdio.h>

int main() {
    printf("Hello, Automake!\n");
    return 0;
}
```

Now, let's update the `Makefile.am` file to include the new `main.c` file and add a custom target:

```bash
cat << EOF > ~/project/automate-demo/Makefile.am
AUTOMAKE_OPTIONS = foreign
bin_PROGRAMS = hello
hello_SOURCES = main.c
install-data-local:
    @echo "Custom install step"
EOF
```

The new `install-data-local` target will be executed during the `make install` step.

Next, let's update the `configure.ac` file to add a custom configuration option:

```bash
cat << EOF > ~/project/automate-demo/configure.ac
AC_INIT([automate-demo], [1.0], [your-email@example.com])
AM_INIT_AUTOMAKE
AC_PROG_CC
AC_ARG_ENABLE([debug],
              [AS_HELP_STRING([--enable-debug],
                             [enable debugging])],
              [debug=yes], [debug=no])
AC_MSG_CHECKING([whether to enable debugging])
AC_MSG_RESULT([$debug])
AM_CONDITIONAL([DEBUG], [test "$debug" = yes])
AC_OUTPUT
EOF
```

This configuration adds a `--enable-debug` option that can be used to enable debugging when building the project.

Now, let's generate the Makefile and build the project:

```bash
cd ~/project/automate-demo
autoreconf -i
./configure
make
```

Example output:

```
checking whether to enable debugging... no
make  all-am
make[1]: Entering directory '/home/labex/project/automate-demo'
gcc -DPACKAGE_NAME=\"automate-demo\" -DPACKAGE_TARNAME=\"automate-demo\" -DPACKAGE_VERSION=\"1.0\" -DPACKAGE_STRING=\"automate-demo\ 1.0\" -DPACKAGE_BUGREPORT=\"your-email@example.com\" -DPACKAGE_URL=\"\" -DSTDC_HEADERS=1 -I. -g -O2 -MT hello-main.o -MD -MP -MF .deps/hello-main.Tpo -c -o hello-main.o main.c
mv -f .deps/hello-main.Tpo .deps/hello-main.Po
gcc -g -O2 -o hello hello-main.o
make[1]: Leaving directory '/home/labex/project/automate-demo'
```

We can now install the project:

```bash
sudo make install
```

Example output:

```
make[1]: Entering directory '/home/labex/project/automate-demo'
 /usr/bin/mkdir -p '/usr/local/bin'
 /usr/bin/install -c 'hello' '/usr/local/bin/hello'
Custom install step
make[1]: Leaving directory '/home/labex/project/automate-demo'
```

The custom `install-data-local` target has been executed during the installation process.
