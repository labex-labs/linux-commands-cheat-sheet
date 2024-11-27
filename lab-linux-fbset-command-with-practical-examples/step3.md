# Customize Display Settings with fbset

In this final step, we will learn how to customize the display settings using the fbset command.

First, let's check the current display settings:

```bash
sudo fbset -i
```

Example output:

```
mode "800x600-60"
    geometry 800 600 800 600 32
    timings 0 0 0 0 0 0 0
    accel false
    rgba 8/16,8/8,8/0,8/24
endmode
```

Now, let's try to customize the display settings. For example, we can adjust the vertical and horizontal timings:

```bash
sudo fbset -depth 32
sudo fbset -xres 800 -yres 600 -vxres 800 -vyres 600 -left 0 -right 0 -upper 0 -lower 0
```

This command sets the screen resolution to 800x600, the color depth to 32-bit, and adjusts the vertical and horizontal timings.

You can also set the frame buffer acceleration:

```bash
sudo fbset -accel true
```

This command enables frame buffer acceleration, which can improve the performance of graphical applications.

Finally, let's save the current display settings to a configuration file:

```bash
sudo fbset -save /etc/fb.modes
```

This command saves the current display settings to the `/etc/fb.modes` file, which can be used to restore the settings later.
