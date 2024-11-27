# Automate File and Directory Management with Python

In this step, we will learn how to automate common file and directory management tasks using Python.

Let's start by creating a new directory and navigating to it:

```python
import os

# Create a new directory
os.mkdir("my_directory")
os.chdir("my_directory")
```

1. **`os.listdir()`**: This function returns a list of all files and directories in the current directory.

```python
print(os.listdir())
# Example output:
# []
```

2. **`os.path.join()`**: This function constructs a path by joining one or more path components intelligently.

```python
file_path = os.path.join("my_directory", "example.txt")
print(file_path)
# Example output:
# my_directory/example.txt
```

3. **`open()`**: This function opens a file in the specified mode (e.g., read, write, append).

```python
with open(file_path, "w") as file:
    file.write("This is an example file.")
```

4. **`os.remove()`**: This function removes (deletes) a file.

```python
os.remove(file_path)
```

5. **`os.rmdir()`**: This function removes (deletes) an empty directory.

```python
os.chdir("..")
os.rmdir("my_directory")
```

6. **`os.path.exists()`**: This function checks if a path (file or directory) exists.

```python
print(os.path.exists("my_directory"))
# Example output:
# False
```

These are just a few examples of how you can use Python to automate common file and directory management tasks. As you continue to work with Python, you'll discover more ways to streamline your file and directory operations.
