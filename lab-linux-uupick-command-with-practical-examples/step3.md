# Introduction to the uupick Command

In this step, we will learn about the `uupick` command, which is used to extract files from UUENCODE encoded emails. The `uupick` command is a part of the `sharutils` package, which is a collection of utilities for encoding and decoding files for transmission via email or other communication channels.

First, let's install the `sharutils` package:

```bash
sudo apt-get update
sudo apt-get install -y sharutils
```

The `uupick` command is used to extract files from UUENCODE encoded emails. UUENCODE is a method of encoding binary data, such as files, into a format that can be transmitted through email or other text-based communication channels.

To use `uupick`, you can simply run the command and it will prompt you to enter the UUENCODE encoded data. Once you have entered the data, `uupick` will extract the file and save it to the current directory.

Example usage:

```bash
uupick
```

Example output:

```
begin 644 example.txt
M'XL("0H+:6-R965T"D0H*B$@`
`
end
File 'example.txt' created.
```

In this example, the `uupick` command has extracted the file `example.txt` from the UUENCODE encoded data.
