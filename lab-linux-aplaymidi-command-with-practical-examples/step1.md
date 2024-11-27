# Understand the aplaymidi Command

In this step, we will learn about the `aplaymidi` command, a powerful Linux utility for playing MIDI files. The `aplaymidi` command allows you to send MIDI data to ALSA MIDI devices, making it a useful tool for audio production and music creation on Linux systems.

First, let's explore the basic usage of the `aplaymidi` command. To display the available MIDI devices on your system, run the following command:

```
aplaymidi -l
```

Example output:

```
# aplaymidi -l
Port    Client name                       Port name
 14:0    Midi Through                      Midi Through Port-0
 20:0    TiMidity                          TiMidity port 0
 20:1    TiMidity                          TiMidity port 1
```

This command lists the available MIDI devices on your system, including their client name and port name. You can use this information to identify the MIDI device you want to use for playback.

Next, let's try playing a MIDI file using the `aplaymidi` command. Assuming you have a MIDI file named `example.mid` in your `~/project` directory, you can play it using the following command:

```
aplaymidi -p 20:0 ~/project/example.mid
```

This command will send the MIDI data from the `example.mid` file to the MIDI device with the port name `TiMidity port 0`.

The `-p` option specifies the MIDI device port to use for playback. You can use the port information obtained from the `aplaymidi -l` command to select the appropriate MIDI device.
