# Explore Advanced aplaymidi Options

In this final step, we will explore some advanced options available with the `aplaymidi` command.

One useful option is the ability to send MIDI data to multiple MIDI devices simultaneously. This can be achieved using the `-p` option with a comma-separated list of device ports. For example, to send MIDI data to both "TiMidity port 0" and "TiMidity port 1", you can use the following command:

```
aplaymidi -p 20:0,20:1 ~/project/example.mid
```

This will play the MIDI file through both MIDI devices at the same time.

Another advanced option is the ability to adjust the playback volume of the MIDI file. You can use the `-v` option followed by a value between 0 and 127 to set the volume level. For example, to play the MIDI file at 75% volume, you can use:

```
aplaymidi -p 20:0 -v 95 ~/project/example.mid
```

You can also combine the volume option with the multiple device option to adjust the volume for each device individually:

```
aplaymidi -p 20:0,20:1 -v 95,127 ~/project/example.mid
```

In this example, the MIDI file will be played at 75% volume on the "TiMidity port 0" device and 100% volume on the "TiMidity port 1" device.

Finally, you can use the `--wait` option to keep the `aplaymidi` process running until the MIDI playback is complete. This can be useful when you want to ensure the entire MIDI file is played before your script or program continues:

```
aplaymidi -p 20:0 --wait ~/project/example.mid
```

With these advanced options, you can fine-tune the MIDI playback experience and integrate the `aplaymidi` command into your audio production or music creation workflows.
