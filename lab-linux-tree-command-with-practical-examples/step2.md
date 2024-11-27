# Explore the Basic Options of the tree Command

In this step, you will explore the basic options available with the `tree` command to customize the output and make it more informative.

Let's start by displaying the file sizes along with the directory and file names:

```bash
tree -h
```

Example output:

```
.
├── project
│   └── README.md
└── .zshrc

1 directory, 2 files
```

The `-h` option displays the file sizes in a human-readable format (e.g., kilobytes, megabytes).

Another useful option is `-d`, which displays only the directory structure without the files:

```bash
tree -d
```

Example output:

```
.
└── project
```

You can also limit the depth of the tree output using the `-L` option, which specifies the maximum depth to display:

```bash
tree -L 1
```

Example output:

```
.
├── project
└── .zshrc
```

In this example, the `-L 1` option limits the output to a depth of 1, showing only the top-level directories and files.

To exclude certain file types from the output, you can use the `-I` option followed by a pattern. For instance, to exclude all files with the `.zsh` extension:

```bash
tree -I '*.zsh'
```

Example output:

```
.
└── project
    └── README.md
```

The `*` in the pattern acts as a wildcard, matching any file with the `.zsh` extension.

These are just a few examples of the basic options available with the `tree` command. You can explore more options by running `man tree` to view the full list of available options and their descriptions.
