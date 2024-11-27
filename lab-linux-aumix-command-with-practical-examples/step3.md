# Mute and Unmute Audio Channels with aumix

In this step, we will learn how to mute and unmute specific audio channels using the `aumix` command.

First, let's list the available audio channels:

```bash
aumix -c
```

Example output:

```
Channels:
  Master  (volume:  50%)
  PCM     (volume: 100%)
  CD      (volume: 100%)
  Line    (volume: 100%)
  Mic     (volume: 100%)
  PC Speaker (volume: 100%)
```

To mute a specific channel, use the `-m` option followed by the channel name:

```bash
sudo aumix -m PCM
```

Example output:

```
PCM     (volume:   0%)
```

To unmute the channel, use the `-u` option:

```bash
sudo aumix -u PCM
```

Example output:

```
PCM     (volume: 100%)
```

You can also mute or unmute multiple channels at once:

```bash
sudo aumix -m "Mic PC Speaker" -u "CD Line"
```

Example output:

```
Mic     (volume:   0%)
PC Speaker (volume:   0%)
CD      (volume: 100%)
Line    (volume: 100%)
```

Feel free to experiment with muting and unmuting different audio channels to suit your needs.
