# Understand the Purpose and Syntax of the expr Command

In this step, you will learn about the purpose and syntax of the `expr` command in Linux. The `expr` command is a powerful tool for performing various operations, including arithmetic calculations, string manipulation, and conditional expressions.

The basic syntax of the `expr` command is:

```
expr [option] expression
```

Here, `expression` is the operation or expression that you want to evaluate. The `expr` command can perform the following types of operations:

- Arithmetic operations: `+`, `-`, `*`, `/`, `%`
- String manipulation: `match`, `substr`, `index`, `length`
- Logical and comparison operations: `=`, `!=`, `\<`, `\>`, `\<=`, `\>=`, `|`, `&`

Let's start by exploring some basic arithmetic operations using `expr`.

```
# Perform basic arithmetic operations
expr 5 + 3
expr 10 - 4
expr 6 \* 7
expr 15 / 3
expr 17 % 5
```

Example output:

```
8
6
42
5
2
```

In the above examples, we used the `expr` command to perform addition, subtraction, multiplication, division, and modulo operations. Note that for multiplication, we need to escape the `*` character with a backslash (`\*`) to prevent the shell from interpreting it as a wildcard.

Now, let's explore some string manipulation operations using `expr`.

```
# Perform string manipulation
expr "Hello" : '\(.*\)'
expr "Linux is fun" : '.*is\(.*\)'
expr "www.example.com" : '.*\(.*\)\..*'
```

Example output:

```
Hello
 fun
example
```

In these examples, we used the `match` operator to extract substrings from the input strings using regular expressions. The `match` operator returns the part of the string that matches the regular expression pattern.

The `expr` command can also be used for conditional expressions and logical operations. Here's an example:

```
# Perform conditional expressions
expr 5 \> 3
expr 7 \< 10
expr 4 = 4
expr 8 \!= 5
```

Example output:

```
1
1
1
1
```

In the above examples, the `expr` command returns `1` if the condition is true, and `0` if the condition is false.
