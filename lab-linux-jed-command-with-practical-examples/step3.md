# Customizing jed Editor Settings

In this final step, we will explore how to customize the jed text editor to suit your preferences and workflow.

jed provides a wide range of configuration options that you can tweak to enhance your productivity. Let's start by creating a jed configuration file:

```bash
touch ~/.jedrc
```

This will create a new file called `.jedrc` in your home directory, which is where jed looks for its configuration settings.

Now, let's open the `.jedrc` file in the jed editor:

```bash
jed ~/.jedrc
```

Here are some common customization options you can add to the `.jedrc` file:

- To set the tab size to 4 spaces:
  ```
  set_tab_width(4);
  ```
- To enable line numbers:
  ```
  set_line_numbers(1);
  ```
- To set the cursor color to red:
  ```
  set_cursor_color("red");
  ```
- To set the background color to a light gray:
  ```
  set_bg_color("light gray");
  ```
- To set the font size to 14:
  ```
  set_font_size(14);
  ```
- To enable syntax highlighting for specific file types:
  ```
  auto_mode_set(".c", "c-mode");
  auto_mode_set(".py", "python-mode");
  auto_mode_set(".js", "javascript-mode");
  ```

After making your desired changes, save the `.jedrc` file by pressing `Ctrl+X` and then `s`.

Now, when you start the jed editor, your custom settings will be applied. You can continue to experiment with different configuration options to find the setup that works best for you.
