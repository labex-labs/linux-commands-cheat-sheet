# Extract a Single RAR File

In this step, we will learn how to extract a single RAR file using the unrar command.

First, let's download a sample RAR file to our `~/project` directory:

```bash
cd ~/project
wget https://github.com/mebeim/unrar-examples/raw/master/single.rar
```

Example output:

```
--2023-04-27 12:34:56--  https://github.com/mebeim/unrar-examples/raw/master/single.rar
Resolving github.com (github.com)... 140.82.121.4
Connecting to github.com (github.com)|140.82.121.4|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1011 (1.0K) [application/octet-stream]
Saving to: 'single.rar'

single.rar          100%[===================>]   1.01K  --.-KB/s    in 0s

2023-04-27 12:34:56 (25.5 MB/s) - 'single.rar' saved [1011/1011]
```

Now, let's extract the contents of the RAR file using the `unrar` command:

```bash
unrar x single.rar
```

Example output:

```
UNRAR 6.02 freeware      Copyright (c) 1993-2022 Alexander Roshal

Extracting from single.rar

Extracting  example.txt                     OK
All OK
```

The `unrar x` command extracts the contents of the RAR file to the current directory.
