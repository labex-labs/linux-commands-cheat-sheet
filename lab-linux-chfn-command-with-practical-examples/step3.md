# Explore Advanced chfn Options

In this final step, we will explore some advanced options available with the `chfn` command.

First, let's use the `-v` option to verify the current user information:

```bash
sudo chfn -v
```

Example output:

```
Full Name: John Doe
Office: Main Office
Office Phone: 555-1234
Home Phone: 555-5678
Other:
```

The `-v` option simply displays the current user information without allowing any changes.

Next, let's use the `-R` option to reset the user information to the default values:

```bash
sudo chfn -R
```

Example output:

```
Full Name: Labex User
Office:
Office Phone:
Home Phone:
Other:
```

As you can see, the user information has been reset to the default values.

Finally, let's explore the `-l` option, which allows you to list all the fields that can be modified using the `chfn` command:

```bash
sudo chfn -l
```

Example output:

```
The following fields are available:
    full name
    office
    office phone
    home phone
    other
```

This provides a quick reference for the different user information fields that can be modified using the `chfn` command.
