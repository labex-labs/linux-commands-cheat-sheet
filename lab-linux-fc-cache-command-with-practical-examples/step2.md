# Updating the Font Cache with fc-cache

In this step, we will learn how to use the `fc-cache` command to update the font cache on our system.

The font cache is used by the system to improve the performance of font rendering. When you install new fonts or make changes to the font directories, you need to update the font cache for the changes to take effect.

Let's start by checking the current status of the font cache:

```bash
fc-cache -f -v
```

Example output:

```
/home/labex/.local/share/fonts: caching, new cache contents: 0 fonts, 0 dirs
/usr/local/share/fonts: caching, new cache contents: 0 fonts, 0 dirs
/usr/share/fonts: caching, new cache contents: 1 fonts, 0 dirs
/var/cache/fontconfig: cleaning cache directory
/home/labex/.config/fontconfig: cleaning cache directory
```

As you can see, the font cache currently contains one font.

Now, let's add a new font to the system and update the font cache:

```bash
sudo cp ~/project/another-font.ttf /usr/share/fonts/
sudo fc-cache -f -v
```

Example output:

```
/home/labex/.local/share/fonts: caching, new cache contents: 0 fonts, 0 dirs
/usr/local/share/fonts: caching, new cache contents: 0 fonts, 0 dirs
/usr/share/fonts: caching, new cache contents: 2 fonts, 0 dirs
/var/cache/fontconfig: cleaning cache directory
/home/labex/.config/fontconfig: cleaning cache directory
```

The output shows that the font cache now contains two fonts.

You can also use the `fc-list` command to list all the fonts available on your system:

```bash
fc-list
```

This will display a list of all the fonts installed on your system, including the ones you have just added.

In the next step, we will explore how to troubleshoot font cache issues.
