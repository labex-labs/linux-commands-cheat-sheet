# Formatting Output with printf

In this step, you will learn how to use the `printf` command to format the output in various ways.

The `printf` command supports a wide range of formatting specifiers, which allow you to control the output format. Here are some common formatting specifiers:

- `%s`: Formats a string
- `%d`: Formats an integer
- `%f`: Formats a floating-point number
- `%x`: Formats a hexadecimal number
- `%o`: Formats an octal number

Let's explore some examples:

```bash
# Formatting strings
printf "Name: %s\n" "John Doe"
printf "Name: %20s\n" "John Doe"  # Right-aligned with 20 characters
printf "Name: %-20s\n" "John Doe"  # Left-aligned with 20 characters

# Formatting numbers
printf "Age: %d\n" 30
printf "Pi: %.2f\n" 3.14159
printf "Hexadecimal: %x\n" 255
printf "Octal: %o\n" 255
```

Example output:

```
Name: John Doe
Name:                John Doe
Name: John Doe
Age: 30
Pi: 3.14
Hexadecimal: ff
Octal: 377
```

As you can see, the formatting specifiers allow you to control the alignment, precision, and representation of the output.
