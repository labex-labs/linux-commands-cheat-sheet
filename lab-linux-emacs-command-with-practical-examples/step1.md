# Getting Started with emacs

In this step, we will learn how to install and launch the emacs text editor on our Ubuntu 22.04 Docker container.

First, let's install the emacs package using the following command:

```bash
sudo apt-get update
sudo apt-get install -y emacs
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  emacs-common emacs-gtk libgnutls30 libotf0 libxaw7 libxft2 libxpm4
Suggested packages:
  emacs-lucid emacs-nox emacs-gtk-el emacs-el emacs-common-non-dfsg
The following NEW packages will be installed:
  emacs emacs-common emacs-gtk libgnutls30 libotf0 libxaw7 libxft2 libxpm4
0 upgraded, 8 newly installed, 0 to remove and 0 not upgraded.
```

Now that emacs is installed, we can launch it using the following command:

```bash
emacs
```

This will open the emacs editor in the terminal. You should see the emacs startup screen with some basic information and commands.

Example output:

```
GNU Emacs
Copyright (C) 2022 Free Software Foundation, Inc.
GNU Emacs comes with ABSOLUTELY NO WARRANTY.
You may redistribute copies of Emacs
under the terms of the GNU General Public License.
For more information about these matters, see the file named COPYING.

Welcome to GNU Emacs, one of the best text editors in the world.

To get started, you can read the tutorial by pressing Ctrl+h t.
Or you can try out Emacs by opening a file, for example with 'C-x C-f'.
```

In the next step, we will learn some basic emacs commands and shortcuts to help you get started with this powerful text editor.
