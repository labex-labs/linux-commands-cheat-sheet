# Introduction to amixer Command

In this step, you will learn about the `amixer` command, which is a command-line tool used to control sound card mixer settings in Linux. The `amixer` command allows you to adjust the volume, balance, and other settings of your sound card.

First, let's check the current sound card mixer settings using the `amixer` command:

```bash
amixer
```

Example output:

```
Simple mixer control 'Master',0
  Capabilities: pvolume pswitch pswitch-joined
  Playback channels: Front Left - Front Right
  Limits: Playback 0 - 65536
  Mono:
  Front Left: Playback 65536 [100%] [0.00dB] [on]
  Front Right: Playback 65536 [100%] [0.00dB] [on]
```

This output shows the current settings for the 'Master' mixer control, including the volume level and mute status for the front left and right channels.

You can use the `amixer` command to adjust the volume of the 'Master' control:

```bash
amixer set Master 50%
```

Example output:

```
Simple mixer control 'Master',0
  Capabilities: pvolume pswitch pswitch-joined
  Playback channels: Front Left - Front Right
  Limits: Playback 0 - 65536
  Mono:
  Front Left: Playback 32768 [50%] [-6.00dB] [on]
  Front Right: Playback 32768 [50%] [-6.00dB] [on]
```

This command sets the 'Master' volume to 50%.

Now, let's explore how to control specific sound channels using `amixer`.
