# Adjusting Master Volume with amixer

In this step, you will learn how to adjust the master volume of your sound card using the `amixer` command.

First, let's check the current master volume level:

```bash
amixer get Master
```

Example output:

```
Simple mixer control 'Master',0
  Capabilities: pvolume pvolume-joined pswitch pswitch-joined
  Playback channels: Mono
  Limits: Playback 0 - 65536
  Mono: Playback 65536 [100%] [0.00dB] [on]
```

This shows that the master volume is currently set to 100%.

To adjust the master volume, you can use the `amixer set` command. For example, to set the master volume to 50%:

```bash
amixer set Master 50%
```

Example output:

```
Simple mixer control 'Master',0
  Capabilities: pvolume pvolume-joined pswitch pswitch-joined
  Playback channels: Mono
  Limits: Playback 0 - 65536
  Mono: Playback 32768 [50%] [-6.00dB] [on]
```

You can also use absolute values instead of percentages. For example, to set the master volume to the maximum level:

```bash
amixer set Master 65536
```

Example output:

```
Simple mixer control 'Master',0
  Capabilities: pvolume pvolume-joined pswitch pswitch-joined
  Playback channels: Mono
  Limits: Playback 0 - 65536
  Mono: Playback 65536 [100%] [0.00dB] [on]
```

And to mute the master volume:

```bash
amixer set Master mute
```

Example output:

```
Simple mixer control 'Master',0
  Capabilities: pvolume pvolume-joined pswitch pswitch-joined
  Playback channels: Mono
  Limits: Playback 0 - 65536
  Mono: Playback 65536 [100%] [0.00dB] [off]
```

To unmute the master volume:

```bash
amixer set Master unmute
```

Example output:

```
Simple mixer control 'Master',0
  Capabilities: pvolume pvolume-joined pswitch pswitch-joined
  Playback channels: Mono
  Limits: Playback 0 - 65536
  Mono: Playback 65536 [100%] [0.00dB] [on]
```

Now you know how to adjust the master volume using the `amixer` command.
