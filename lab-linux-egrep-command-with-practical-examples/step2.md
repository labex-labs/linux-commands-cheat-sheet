# Use egrep to Search for Regular Expressions

In this step, you will learn how to use egrep to search for more complex patterns using regular expressions.

Let's continue using the `data.txt` file from the previous step:

```
John Doe, 30 years old
Jane Smith, 25 years old
Bob Johnson, 40 years old
```

To search for lines containing a name that starts with "J", you can use the regular expression pattern `'^J\w+'`:

```
egrep '^J\w+' data.txt
```

Example output:

```
John Doe, 30 years old
Jane Smith, 25 years old
```

The `^` symbol matches the beginning of the line, and `\w+` matches one or more word characters (letters, digits, or underscores).

You can also use the `|` operator to search for multiple patterns. For example, to search for lines containing either "John" or "Jane", you can use the pattern `'John|Jane'`:

```
egrep 'John|Jane' data.txt
```

Example output:

```
John Doe, 30 years old
Jane Smith, 25 years old
```

Additionally, you can use character classes to match a range of characters. For instance, to search for lines containing a number between 20 and 40, you can use the pattern `'\b\d{2}\b'`:

```
egrep '\b\d{2}\b' data.txt
```

Example output:

```
John Doe, 30 years old
Jane Smith, 25 years old
```

The `\b` matches a word boundary, and `\d{2}` matches exactly two digits.

Remember, regular expressions can be powerful but also complex. It's important to practice and experiment with different patterns to become comfortable with using egrep for your text processing needs.
