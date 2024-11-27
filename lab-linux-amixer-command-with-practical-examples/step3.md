# Controlling Specific Sound Channels with amixer

In this step, you will learn how to control the volume of specific sound channels using the `amixer` command.

First, let's check the available sound channels on your system:

```bash
amixer scontrols
```

Example output:

```
Simple mixer control 'Master',0
Simple mixer control 'Headphone',0
Simple mixer control 'Speaker',0
Simple mixer control 'PCM',0
Simple mixer control 'Capture',0
```

This shows that there are several available sound channels, including 'Master', 'Headphone', 'Speaker', 'PCM', and 'Capture'.

To adjust the volume of a specific channel, you can use the `amixer sset` command. For example, to set the 'Headphone' channel volume to 50%:

```bash
amixer sset Headphone 50%
```

Example output:

```
Simple mixer control 'Headphone',0
  Capabilities: pvolume pvolume-joined pswitch pswitch-joined
  Playback channels: Front Left - Front Right
  Limits: Playback 0 - 65536
  Mono:
  Front Left: Playback 32768 [50%] [-6.00dB] [on]
  Front Right: Playback 32768 [50%] [-6.00dB] [on]
```

You can also mute or unmute a specific channel:

```bash
amixer sset Headphone mute
amixer sset Headphone unmute
```

Example output:

```
Simple mixer control 'Headphone',0
  Capabilities: pvolume pvolume-joined pswitch pswitch-joined
  Playback channels: Front Left - Front Right
  Limits: Playback 0 - 65536
  Mono:
  Front Left: Playback 65536 [100%] [0.00dB] [off]
  Front Right: Playback 65536 [100%] [0.00dB] [off]

Simple mixer control 'Headphone',0
  Capabilities: pvolume pvolume-joined pswitch pswitch-joined
  Playback channels: Front Left - Front Right
  Limits: Playback 0 - 65536
  Mono:
  Front Left: Playback 65536 [100%] [0.00dB] [on]
  Front Right: Playback 65536 [100%] [0.00dB] [on]
```

Now you know how to control the volume of specific sound channels using the `amixer` command.
