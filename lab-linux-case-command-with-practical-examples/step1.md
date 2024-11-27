# Understand the Syntax and Usage of the case Command

In this step, you will learn the syntax and usage of the `case` command in Linux. The `case` command is a powerful tool for making decisions based on the value of a variable or expression.

The basic syntax of the `case` command is as follows:

```bash
case expression in
  pattern1)
    commands
    ;;
  pattern2)
    commands
    ;;
  ...
  *)
    default commands
    ;;
esac
```

Here's an example that demonstrates the usage of the `case` command:

```bash
echo "Enter a file extension: "
read file_ext

case "$file_ext" in
  "txt")
    echo "The file is a text document."
    ;;
  "pdf")
    echo "The file is a PDF document."
    ;;
  "jpg" | "png" | "gif")
    echo "The file is an image."
    ;;
  *)
    echo "Unsupported file type."
    ;;
esac
```

Example output:

```
Enter a file extension:
pdf
The file is a PDF document.
```

In the example above, the `case` command checks the value of the `file_ext` variable and executes the corresponding commands based on the pattern match. The `*` pattern is used as the default case, which will be executed if none of the other patterns match.

The `case` command is particularly useful when you need to perform different actions based on the file extension or other input values.
