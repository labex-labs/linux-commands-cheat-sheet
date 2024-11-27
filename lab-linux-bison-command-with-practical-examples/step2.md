# Generating Parsers with bison

In this step, we will generate a parser using the bison command based on the grammar file we created in the previous step.

First, let's generate the parser source code from the `example.y` file:

```bash
bison -d example.y
```

This command will generate two files: `example.tab.c` and `example.tab.h`. The `example.tab.c` file contains the parser implementation, while `example.tab.h` contains the token definitions.

Next, we need to compile the parser source code and link it with a lexer (scanner) to create the final executable. We'll use the `flex` tool to generate the lexer:

```bash
sudo apt-get install -y flex
flex -o example.lex.c example.l
gcc -o example example.tab.c example.lex.c
```

The `flex` command generates the `example.lex.c` file, which contains the lexer implementation. The `gcc` command compiles the parser and lexer sources and links them to create the final `example` executable.

Now, let's test our parser by running the `example` program:

```bash
./example
123
Received number: 123
456
Received number: 456
```

As you can see, the parser correctly recognizes and processes the input numbers.
