# Introduction to bison Command

In this step, we will explore the bison command, which is a parser generator tool used in the development of compilers and interpreters. Bison is a free software implementation of YACC (Yet Another Compiler-Compiler), a powerful tool for generating parsers from a context-free grammar specification.

First, let's install the bison package in our Ubuntu 22.04 environment:

```bash
sudo apt-get update
sudo apt-get install -y bison
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  m4
Suggested packages:
  bison-doc
The following NEW packages will be installed:
  bison m4
0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.
Need to get 1,141 kB of archives.
After this operation, 4,470 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
...
```

Now that we have bison installed, let's create a simple grammar file to generate a parser. Create a new file named `example.y` in the `~/project` directory with the following content:

```
%{
#include <stdio.h>
%}

%token NUM
%%

input:
    | input line
;

line:
    NUM '\n' { printf("Received number: %d\n", $1); }
;

%%

int main() {
    yyparse();
    return 0;
}
```

This grammar file defines a simple calculator-like language that can recognize and process numbers. The `%token NUM` line declares a token type for numbers, and the `line` rule specifies that a valid line consists of a number followed by a newline character.
