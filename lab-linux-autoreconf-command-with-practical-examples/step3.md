# Apply autoreconf to a Sample Project

In this step, we will apply the `autoreconf` command to a sample project and observe the generated build system files.

Let's start by creating a new sample project directory:

```bash
mkdir -p ~/project/sample-project-2
cd ~/project/sample-project-2
```

Example output:

```
labex@ubuntu:~/project/sample-project-2$
```

Now, let's create a simple `configure.ac` file in the project directory:

```bash
nano configure.ac
```

Add the following content to the `configure.ac` file:

```
AC_INIT([Sample Project 2], [1.0], [user@example.com])
AM_INIT_AUTOMAKE
AC_PROG_CC
AC_OUTPUT
```

Save and close the file.

Next, let's run the `autoreconf` command to generate the necessary build system files:

```bash
autoreconf -i
```

Example output:

```
labex@ubuntu:~/project/sample-project-2$ autoreconf -i
libtoolize: Putting files in AC_CONFIG_MACRO_DIRS, 'M4'.
libtoolize: Consider adding 'AC_CONFIG_MACRO_DIRS([m4])' to configure.ac and
libtoolize: rerunning libtoolize, to keep the correct libtool macros in-tree.
configure.ac:1: installing './compile'
configure.ac:1: installing './config.guess'
configure.ac:1: installing './config.sub'
configure.ac:1: installing './install-sh'
configure.ac:1: installing './ltmain.sh'
configure.ac:1: installing './missing'
```

After running `autoreconf`, let's take a look at the generated files:

```bash
ls -l
```

Example output:

```
total 32
-rw-rw-r-- 1 labex labex  210 Apr 12 15:41 aclocal.m4
-rw-rw-r-- 1 labex labex  279 Apr 12 15:41 compile
-rw-rw-r-- 1 labex labex 1076 Apr 12 15:41 config.guess
-rw-rw-r-- 1 labex labex  554 Apr 12 15:41 config.sub
-rw-rw-r-- 1 labex labex 3328 Apr 12 15:41 configure
-rw-rw-r-- 1 labex labex 2925 Apr 12 15:41 configure.ac
-rw-rw-r-- 1 labex labex  700 Apr 12 15:41 install-sh
-rw-rw-r-- 1 labex labex 8632 Apr 12 15:41 ltmain.sh
-rw-rw-r-- 1 labex labex  554 Apr 12 15:41 missing
```

You can see that the `autoreconf` command has generated the same set of build system files as in the previous step, including the `configure` script and other supporting files.

These generated files can now be used to compile and install the software project using the standard GNU Autotools build process.
