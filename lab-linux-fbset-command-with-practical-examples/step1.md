# Understand the fbset Command

In this step, we will explore the fbset command, which is used to set and display the frame buffer device parameters. The frame buffer is a memory buffer that represents the screen, and the fbset command allows you to configure the display settings.

First, let's check the current frame buffer device information:

```bash
sudo fbset -i
```

Example output:

```
mode "1024x768-60"
    geometry 1024 768 1024 768 32
    timings 0 0 0 0 0 0 0
    accel false
    rgba 8/16,8/8,8/0,8/24
endmode
```

This command displays the current frame buffer mode, including the resolution, depth, and other display settings.

Next, let's list all the available frame buffer modes:

```bash
sudo fbset -l
```

Example output:

```
mode "640x480-60"
    geometry 640 480 640 480 8
    timings 0 0 0 0 0 0 0
    accel false
    rgba 8/16,8/8,8/0,8/24
endmode
mode "800x600-60"
    geometry 800 600 800 600 8
    timings 0 0 0 0 0 0 0
    accel false
    rgba 8/16,8/8,8/0,8/24
endmode
mode "1024x768-60"
    geometry 1024 768 1024 768 32
    timings 0 0 0 0 0 0 0
    accel false
    rgba 8/16,8/8,8/0,8/24
endmode
```

This command lists all the available frame buffer modes, which you can use to configure the display settings.
