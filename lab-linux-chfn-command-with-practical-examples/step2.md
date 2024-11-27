# Modify User Information Using chfn

In this step, we will learn how to modify different user information fields using the `chfn` command.

First, let's update the office location:

```bash
sudo chfn -o "Main Office"
```

Example output:

```
Full Name: John Doe
Office: Main Office
Office Phone:
Home Phone:
Other:
```

Next, let's set the office phone number:

```bash
sudo chfn -p "555-1234"
```

Example output:

```
Full Name: John Doe
Office: Main Office
Office Phone: 555-1234
Home Phone:
Other:
```

Finally, let's add a home phone number:

```bash
sudo chfn -h "555-5678"
```

Example output:

```
Full Name: John Doe
Office: Main Office
Office Phone: 555-1234
Home Phone: 555-5678
Other:
```

As you can see, we used the following options to update the different user information fields:

- `-o`: Update the office location
- `-p`: Update the office phone number
- `-h`: Update the home phone number

You can also use the `-r` option to remove a field, and the `-w` option to update the "Other" field.
