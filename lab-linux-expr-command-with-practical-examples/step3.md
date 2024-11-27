# Apply expr for String Manipulation and Conditional Expressions

In this step, you will learn how to use the `expr` command for string manipulation and conditional expressions.

Let's start with string manipulation:

```
# Extract a substring
expr "Linux is fun" : '.*is\(.*\)'
```

Example output:

```
 fun
```

In this example, we used the `match` operator with a regular expression to extract the substring that comes after the word "is" in the input string.

```
# Get the length of a string
expr "hello" : '.\{5\}'
```

Example output:

```
5
```

Here, we used the `match` operator with a regular expression to get the length of the string "hello".

Now, let's explore some conditional expressions:

```
# Comparison operations
expr 7 \< 10
expr 5 \> 3
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

In these examples, we used the `expr` command to perform comparison operations, such as less than, greater than, equal to, and not equal to. The `expr` command returns `1` if the condition is true, and `0` if the condition is false.

You can also combine multiple conditions using logical operators:

```
# Logical operations
expr 5 -eq 5 -a 7 -gt 3
expr 4 -ne 5 -o 8 -lt 10
```

Example output:

```
1
1
```

In these examples, we used the `-eq`, `-gt`, `-ne`, and `-lt` operators to perform logical operations, such as AND (`-a`) and OR (`-o`).
