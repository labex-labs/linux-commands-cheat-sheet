#!/bin/bash

# Check if bison is installed
if ! command -v bison &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y bison
fi

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change to the project directory
cd ~/project

# Create the example.y file
cat << EOF > example.y
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
EOF

# Generate the parser source code
bison -d example.y