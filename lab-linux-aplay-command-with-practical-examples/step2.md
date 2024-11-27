# Play Audio Files Using the aplay Command

In this step, we will learn how to use the `aplay` command to play audio files in Linux.

First, let's download a sample audio file to use in our examples:

```bash
wget https://www.soundjay.com/button/sounds/beep-07.wav -O ~/project/beep.wav
```

Example output:

```
--2023-04-12 08:31:33--  https://www.soundjay.com/button/sounds/beep-07.wav
Resolving www.soundjay.com (www.soundjay.com)... 104.24.108.5, 104.24.109.5
Connecting to www.soundjay.com (www.soundjay.com)|104.24.108.5|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 11174 (11K) [audio/x-wav]
Saving to: '~/project/beep.wav'

~/project/beep.wav     100%[===================>]  10.92K  --.-KB/s    in 0s

2023-04-12 08:31:33 (128 MB/s) - '~/project/beep.wav' saved [11174/11174]
```

Now, let's play the audio file using the `aplay` command:

```bash
aplay ~/project/beep.wav
```

Example output:

```
Playing WAVE '/home/labex/project/beep.wav' : Signed 16 bit Little Endian, Rate 44100 Hz, Stereo
```

You should hear the audio file playing through your system's speakers or headphones.

To stop the playback, press `Ctrl+C`.

The `aplay` command supports various options to control the audio playback, such as setting the volume, looping the audio, and more. We'll explore these options in the next step.
