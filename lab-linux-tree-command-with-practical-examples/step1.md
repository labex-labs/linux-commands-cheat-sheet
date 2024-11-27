# Understand the Purpose and Usage of the tree Command

In this step, you will learn about the purpose and usage of the `tree` command in Linux. The `tree` command is a powerful tool that displays the directory structure in a tree-like format, making it easier to visualize and navigate the file system.

To begin, let's install the `tree` command if it's not already installed in the Ubuntu 22.04 Docker container:

```bash
sudo apt-get update
sudo apt-get install -y tree
```

Now, let's explore the basic usage of the `tree` command:

```bash
tree
```

Example output:

```
.
├── project
│   └── README.md
└── .zshrc

1 directory, 2 files
```

The `tree` command, when executed without any options, displays the directory structure starting from the current working directory. It shows the directories and files in a hierarchical, tree-like format, making it easy to understand the organization of the file system.

You can also use the `tree` command to display the structure of a specific directory:

```bash
tree ~/project
```

Example output:

```
/home/labex/project
└── README.md

0 directories, 1 file
```

In this example, the `tree` command shows the contents of the `~/project` directory.

The `tree` command provides various options to customize the output, such as displaying file sizes, hiding certain file types, and more. We'll explore these options in the next step.
