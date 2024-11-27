#!/bin/bash

# Check Perl version
perl --version

# Create hello.pl script
mkdir -p ~/project
cat << EOF > ~/project/hello.pl
#!/usr/bin/env perl

print "Hello, Perl!\n";
EOF
chmod +x ~/project/hello.pl
~/project/hello.pl

# Create math.pl script
cat << EOF > ~/project/math.pl
#!/usr/bin/env perl

use strict;
use warnings;

my $num1 = 10;
my $num2 = 5;

my $sum = $num1 + $num2;
my $difference = $num1 - $num2;
my $product = $num1 * $num2;
my $quotient = $num1 / $num2;

print "Sum: $sum\n";
print "Difference: $difference\n";
print "Product: $product\n";
print "Quotient: $quotient\n";
EOF
chmod +x ~/project/math.pl
~/project/math.pl