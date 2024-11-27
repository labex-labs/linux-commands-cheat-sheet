# Play MIDI Files Using aplaymidi

In this step, we will learn how to use the `aplaymidi` command to play MIDI files on your Linux system.

First, let's ensure we have a MIDI file available to use. You can download a sample MIDI file or use the `example.mid` file from the previous step.

To play a MIDI file using `aplaymidi`, run the following command:

```
aplaymidi -p 20:0 ~/project/example.mid
```

Replace `~/project/example.mid` with the path to your MIDI file.

The `-p 20:0` option specifies the MIDI device port to use for playback. In this case, we're using the "TiMidity port 0" device, which we identified in the previous step.

You should hear the MIDI file being played through your system's audio output.

If you want to play the MIDI file in the background, you can use the `&` operator to run the command in the background:

```
aplaymidi -p 20:0 ~/project/example.mid &
```

This will allow you to continue using the terminal while the MIDI file is playing.

To stop the playback, you can use the `kill` command with the process ID (PID) of the `aplaymidi` process. First, find the PID using the `ps` command:

```
ps aux | grep aplaymidi
```

This will show the PID of the running `aplaymidi` process. Then, use the `kill` command to stop the playback:

```
kill [PID]
```

Replace `[PID]` with the actual PID of the `aplaymidi` process.
