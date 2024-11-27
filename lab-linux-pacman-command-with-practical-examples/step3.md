# Searching for and Removing Packages with pacman

In this step, you will learn how to search for and remove packages using the pacman package manager.

To search for a package, you can use the `-Ss` (search) option. For example, let's search for the "vim" text editor:

```bash
sudo pacman -Ss vim
```

Example output:

```
extra/vim 9.0.1287-1 (base-devel)
    Vi Improved, a highly configurable, improved version of the vi text editor
extra/vim-runtime 9.0.1287-1
    Runtime files for vim
community/gvim 9.0.1287-1
    GTK2 version of the Vim editor
community/vim-latex 1.8.23-5
    A comprehensive set of vim macros and plugins for LaTeX typesetting
community/vim-spell-en 20221204.1.0-1
    English language pack for vim
```

This will search the package repositories and display all packages that match the search term "vim".

To remove a package, you can use the `-R` (remove) option. For example, let's remove the "htop" package that we installed earlier:

```bash
sudo pacman -R htop
```

Example output:

```
:: Removing htop (3.2.1-1) via pacman
```

If the package has dependencies, pacman will also remove those dependencies by default. You can use the `-Rs` (remove with dependencies) option to remove a package and its dependencies.
