# List All Available Fonts on the System

In this step, we will learn how to list all available fonts on the system using the `fc-list` command.

To list all available fonts, simply run the following command in the terminal:

```
sudo fc-list
```

This will display a list of all the fonts installed on your system, including the font file path, font family name, and font style. The output will look similar to the following:

```
Example output:
/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf: DejaVu Sans,DejaVu Sans Book:style=Book,Book
/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf: DejaVu Sans:style=Bold
/usr/share/fonts/truetype/dejavu/DejaVuSans-Oblique.ttf: DejaVu Sans:style=Oblique
/usr/share/fonts/truetype/dejavu/DejaVuSans-BoldOblique.ttf: DejaVu Sans:style=Bold Oblique
```

You can also use the `fc-list` command with additional options to get more detailed information about the fonts. For example, to list the font family names only, you can use the following command:

```
sudo fc-list --format='%{family}\n'
```

This will display a list of all the font family names installed on your system.
