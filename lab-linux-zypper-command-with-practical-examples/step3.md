# Searching and Removing Packages with zypper

In this step, we will learn how to use zypper to search for packages and remove installed packages.

First, let's search for a package using the `zypper search` command. We'll search for the `vim` package:

```
sudo zypper search vim
```

Example output:

```
Loading repository data...
Reading installed packages...

S | Name | Summary | Type
--+------+---------+------
i | vim | Vi IMproved - enhanced vi editor | package
  | vim-data | Data files for VIM - Vi IMproved | package
  | vim-data-common | Common data files for VIM - Vi IMproved | package
  | vim-data-en | English language files for VIM - Vi IMproved | package
  | vim-data-en_GB | British English language files for VIM - Vi IMproved | package
  | vim-data-fr | French language files for VIM - Vi IMproved | package
  | vim-data-it | Italian language files for VIM - Vi IMproved | package
  | vim-data-pl | Polish language files for VIM - Vi IMproved | package
  | vim-data-ru | Russian language files for VIM - Vi IMproved | package
```

The search results show that the `vim` package is installed on the system (indicated by the `i` in the first column).

Now, let's remove the `vim` package using the `zypper remove` command:

```
sudo zypper remove vim
```

Example output:

```
Loading repository data...
Reading installed packages...
Resolving package dependencies...

The following package is going to be REMOVED:
  vim

1 package to remove.
After the operation, 14.1 MiB will be freed.
Continue? [y/n/? shows all options] (y): y
Removing: vim-8.2.5402-3.1.x86_64 [done]
```

The `zypper remove` command has successfully removed the `vim` package from the system.
