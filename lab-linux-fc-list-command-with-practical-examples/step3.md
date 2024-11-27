# Filter Fonts by Family, Style, and Other Attributes

In this step, we will learn how to filter the list of available fonts by family, style, and other attributes using the `fc-list` command.

To filter fonts by family, you can use the `--format` option with the `%{family}` specifier. For example, to list all fonts in the "DejaVu Sans" family, run the following command:

```
sudo fc-list --format='%{family}\n' | grep "DejaVu Sans"
```

This will display a list of all fonts in the "DejaVu Sans" family.

To filter fonts by style, you can use the `--format` option with the `%{style}` specifier. For example, to list all bold fonts, run the following command:

```
sudo fc-list --format='%{family}:%{style}\n' | grep "Bold"
```

This will display a list of all bold fonts installed on your system.

You can also combine multiple filters to get more specific results. For example, to list all bold fonts in the "DejaVu Sans" family, run the following command:

```
sudo fc-list --format='%{family}:%{style}\n' | grep "DejaVu Sans" | grep "Bold"
```

This will display a list of all bold fonts in the "DejaVu Sans" family.
