# Extract a Multi-Part RAR Archive

In this step, we will learn how to extract a multi-part RAR archive using the unrar command.

First, let's download the multi-part RAR archive to our `~/project` directory:

```bash
cd ~/project
wget https://github.com/mebeim/unrar-examples/raw/master/multi-part.part1.rar
wget https://github.com/mebeim/unrar-examples/raw/master/multi-part.part2.rar
```

Example output:

```
--2023-04-27 12:34:56--  https://github.com/mebeim/unrar-examples/raw/master/multi-part.part1.rar
Resolving github.com (github.com)... 140.82.121.4
Connecting to github.com (github.com)|140.82.121.4|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1011 (1.0K) [application/octet-stream]
Saving to: 'multi-part.part1.rar'

multi-part.part1.rar 100%[===================>]   1.01K  --.-KB/s    in 0s

2023-04-27 12:34:56 (25.5 MB/s) - 'multi-part.part1.rar' saved [1011/1011]

--2023-04-27 12:34:56--  https://github.com/mebeim/unrar-examples/raw/master/multi-part.part2.rar
Resolving github.com (github.com)... 140.82.121.4
Connecting to github.com (github.com)|140.82.121.4|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1011 (1.0K) [application/octet-stream]
Saving to: 'multi-part.part2.rar'

multi-part.part2.rar 100%[===================>]   1.01K  --.-KB/s    in 0s

2023-04-27 12:34:56 (25.5 MB/s) - 'multi-part.part2.rar' saved [1011/1011]
```

Now, let's extract the contents of the multi-part RAR archive using the `unrar` command:

```bash
unrar x multi-part.part1.rar
```

Example output:

```
UNRAR 6.02 freeware      Copyright (c) 1993-2022 Alexander Roshal

Extracting from multi-part.part1.rar

Extracting  example.txt                     OK
All OK
```

The `unrar x` command automatically detects and extracts the contents of the multi-part RAR archive.
