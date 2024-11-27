# Customizing emacs with Configuration Files

In this step, we will learn how to customize the emacs editor by modifying its configuration files.

Emacs stores its configuration in the `.emacs` file, which is located in the user's home directory. Let's create this file and add some basic customizations:

```bash
touch ~/.emacs
```

Now, open the `.emacs` file in emacs:

```bash
emacs ~/.emacs
```

In the `.emacs` file, add the following lines to change the font size and enable line numbers:

```lisp
(set-face-attribute 'default nil :height 140)
(global-display-line-numbers-mode)
```

Save the file and exit emacs.

Now, let's test the changes:

```bash
emacs
```

You should see that the font size has increased, and line numbers are displayed in the editor.

Example output:

```
The font size is larger, and line numbers are displayed as expected.
```

Emacs supports a wide range of customization options, from changing the theme and appearance to adding custom functionality. You can explore the emacs documentation and online resources to learn more about configuring emacs to suit your needs.
