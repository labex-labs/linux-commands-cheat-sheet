# Introduction to Perl Programming in Linux

In this step, we will introduce the Perl programming language and how to use it in a Linux environment. Perl is a powerful and versatile scripting language that is widely used for system administration, text processing, and web development tasks.

First, let's check the version of Perl installed in our Ubuntu 22.04 Docker container:

```bash
perl --version
```

Example output:

```
This is perl 5, version 30, subversion 0 (v5.30.0) built for x86_64-linux-gnu-thread-multi
(with 44 registered patches, see perl -V for more detail)

Copyright 1987-2019, Larry Wall

Perl may be copied only under the terms of either the Artistic License or the
GNU General Public License, which may be found in the Perl 5 source kit.

Complete documentation for Perl, including FAQ lists, should be found on
this system using "man perl" or "perldoc perl". If you have access to the
Internet, point your browser at http://www.perl.org/, the Perl Home Page.
```

As you can see, Perl version 5.30.0 is installed in our environment.

Next, let's create a simple Perl script. Create a new file named `hello.pl` in the `~/project` directory:

```bash
nano ~/project/hello.pl
```

Add the following Perl code to the file:

```perl
#!/usr/bin/env perl

print "Hello, Perl!\n";
```

Save the file and exit the nano editor.

Now, make the script executable and run it:

```bash
chmod +x ~/project/hello.pl
~/project/hello.pl
```

Example output:

```
Hello, Perl!
```

In this step, we have introduced the Perl programming language and learned how to create and execute a simple Perl script in a Linux environment. In the next steps, we will explore more advanced Perl commands and practical examples.
