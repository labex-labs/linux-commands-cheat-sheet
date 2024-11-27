# Understand the Purpose and Syntax of the fc-list Command

In this step, we will explore the purpose and syntax of the `fc-list` command in Linux. The `fc-list` command is used to list all available fonts on the system, and it can be used to filter fonts by family, style, and other attributes.

To use the `fc-list` command, simply run the following command in the terminal:

```
sudo fc-list
```

This will display a list of all available fonts on the system. The output will look similar to the following:

```
Example output:
/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf: DejaVu Sans,DejaVu Sans Book:style=Book,Book
/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf: DejaVu Sans:style=Bold
/usr/share/fonts/truetype/dejavu/DejaVuSans-Oblique.ttf: DejaVu Sans:style=Oblique
/usr/share/fonts/truetype/dejavu/DejaVuSans-BoldOblique.ttf: DejaVu Sans:style=Bold Oblique
```

The output shows the font file path, the font family name, and the font style. You can use the `fc-list` command with various options to filter the output and get more specific information about the fonts on your system.
