# Executing Perl Scripts in the Linux Terminal

In this step, we will learn how to execute Perl scripts in the Linux terminal.

First, let's create another Perl script named `math.pl` in the `~/project` directory:

```bash
nano ~/project/math.pl
```

Add the following Perl code to the file:

```perl
#!/usr/bin/env perl

$a = 10;
$b = 5;
$sum = $a + $b;
print "The sum of $a and $b is $sum\n";
```

Save the file and exit the nano editor.

Now, make the script executable and run it:

```bash
chmod +x ~/project/math.pl
~/project/math.pl
```

Example output:

```
The sum of 10 and 5 is 15
```

You can also run Perl scripts directly using the `perl` command:

```bash
perl ~/project/math.pl
```

This will produce the same output as before.

Additionally, you can pass arguments to your Perl script from the command line. Modify the `math.pl` script to accept two arguments:

```perl
#!/usr/bin/env perl

$a = $ARGV[0];
$b = $ARGV[1];
$sum = $a + $b;
print "The sum of $a and $b is $sum\n";
```

Save the file and run the script with arguments:

```bash
~/project/math.pl 20 10
```

Example output:

```
The sum of 20 and 10 is 30
```

In this step, we have learned how to execute Perl scripts in the Linux terminal, both by making the script executable and by running it directly with the `perl` command. We have also seen how to pass arguments to a Perl script from the command line.
