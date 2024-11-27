# Apply the tree Command to Specific Directories and Files

In this step, you will learn how to apply the `tree` command to specific directories and files to explore the file system structure in more detail.

Let's start by creating a sample directory structure in the `~/project` directory:

```bash
mkdir -p ~/project/documents/reports
touch ~/project/documents/report1.txt
touch ~/project/documents/report2.txt
touch ~/project/documents/report3.txt
```

Now, let's use the `tree` command to display the structure of the `~/project/documents` directory:

```bash
tree ~/project/documents
```

Example output:

```
/home/labex/project/documents
├── report1.txt
├── report2.txt
└── reports
    └── README.md

1 directory, 4 files
```

You can see that the `tree` command displays the directory structure, including the files and subdirectories within the `~/project/documents` directory.

To display the structure of a specific file, you can use the `tree` command with the `-f` option, which shows the full path of each file:

```bash
tree -f ~/project/documents
```

Example output:

```
/home/labex/project/documents
├── /home/labex/project/documents/report1.txt
├── /home/labex/project/documents/report2.txt
└── /home/labex/project/documents/reports
    └── /home/labex/project/documents/reports/README.md

1 directory, 4 files
```

The `-f` option displays the full path of each file, making it easier to understand the location of the files within the directory structure.

You can also use the `tree` command to display the structure of multiple directories or files by providing them as arguments:

```bash
tree ~/project ~/Documents
```

Example output:

```
/home/labex/Documents
/home/labex/project
├── documents
│   ├── report1.txt
│   ├── report2.txt
│   └── reports
│       └── README.md
└── README.md

2 directories, 5 files
```

In this example, the `tree` command displays the structure of both the `~/project` and `~/Documents` directories.

These are just a few examples of how you can use the `tree` command to explore specific directories and files in your Linux file system. Feel free to experiment with different options and scenarios to become more familiar with this powerful tool.
