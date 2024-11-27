# Adjust Screen Resolution and Depth Using fbset

In this step, we will learn how to adjust the screen resolution and depth using the fbset command.

First, let's check the available screen resolutions using the `fbset -l` command:

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

Now, let's change the screen resolution to 800x600 and the color depth to 32-bit:

```bash
sudo fbset -mode 800x600-60
sudo fbset -depth 32
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

The `fbset -mode` command sets the screen resolution, and the `fbset -depth` command sets the color depth.
