# Understand the Purpose and Usage of the info Command

In this step, we will explore the purpose and usage of the `info` command in Linux. The `info` command is a tool that provides detailed information about Linux commands, utilities, and system functions.

The `info` command is similar to the `man` command, but it provides a more structured and interactive way to access documentation. Unlike the `man` pages, which are typically displayed in a single, scrollable window, the `info` command presents information in a hierarchical, hypertext-like format, allowing you to navigate through related topics and cross-references.

Let's start by running the `info` command without any arguments:

```
$ info
```

This will open the top-level `info` menu, which provides an overview of the available topics and how to navigate the `info` system.

Example output:

```
This is the top of the INFO tree

This (the Directory node) gives a menu of major topics.
Typing "q" exits, "?" lists all INFO commands, "d" returns here,
"h" gives a primer for first-timers,
"mEmacs<Return>" visits the Emacs manual, etc.

In Emacs, you can click mouse button 2 on a menu item or cross-reference
to select it.

* Menu:

* Getting Started: (info-starters).   Getting started with Info.
* Info Basics:       (info-basics).   Info's essential features.
* Info Commands:     (info-commands). All Info commands.
* Info Files:        (info-files).    The Info directory.
* Info Internals:    (info-internals).Internal details of Info.
```

As you can see, the `info` command provides a menu-driven interface that allows you to navigate through various topics and access detailed information about different Linux commands and utilities.

To explore a specific topic, you can type the topic name (e.g., `info-commands`) and press Enter. This will take you to the corresponding section, where you can read the documentation and navigate to related topics.

The `info` command also supports various navigation commands, such as:

- `n`: Move to the next node
- `p`: Move to the previous node
- `u`: Move up to the parent node
- `d`: Move to the directory node (top-level menu)
- `q`: Quit the `info` command

Now that you have a basic understanding of the `info` command, let's move on to the next step, where we'll explore the various options and navigation techniques in more detail.
