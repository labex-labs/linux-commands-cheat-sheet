# Creating a Basic Automake Project

In this step, we will create a basic Automake project and generate a Makefile.

First, let's create a new directory for our project and navigate to it:

```bash
mkdir ~/project/automate-demo
cd ~/project/automate-demo
```

Next, we need to create the initial Automake files. We'll start with the `configure.ac` file, which contains the high-level configuration for the project:

```bash
touch configure.ac
```

Open the `configure.ac` file in a text editor and add the following content:

```
AC_INIT([automate-demo], [1.0], [your-email@example.com])
AM_INIT_AUTOMAKE
AC_PROG_CC
AC_OUTPUT
```

This configuration sets the project name, version, and maintainer email address, initializes Automake, and specifies that we want to use the C compiler.

Now, let's create the `Makefile.am` file, which contains the instructions for building the project:

```bash
touch Makefile.am
```

Open the `Makefile.am` file and add the following content:

```
AUTOMAKE_OPTIONS = foreign
bin_PROGRAMS = hello
hello_SOURCES = main.c
```

This Makefile.am file specifies that we want to build a program called "hello" from the `main.c` source file.

The final step is to generate the Makefile from the Automake files:

```bash
autoreconf -i
```

This command will generate the `Makefile` and other necessary files for the project.

Example output:

```
autoreconf: Entering directory '.'
autoreconf: configure.ac: not using Gettext
autoreconf: running: aclocal --force
autoreconf: configure.ac: tracing
autoreconf: running: libtoolize --copy --force
libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, 'config'.
libtoolize: copying file 'config/ltmain.sh'
libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'config'.
autoreconf: running: /usr/bin/autoconf --force
autoreconf: running: /usr/bin/autoheader --force
autoreconf: running: automake --add-missing --copy --force-missing
autoreconf: Leaving directory '.'
```

Now, we have a basic Automake project set up, and we can move on to the next step to customize the configuration.
