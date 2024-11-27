# Adjust Master Volume Level Using aumix

In this step, we will use the `aumix` command to adjust the master volume level on our Ubuntu 22.04 system.

First, let's check the current master volume level:

```bash
aumix -v
```

Example output:

```
Master volume: 100%
```

To adjust the master volume level, you can use the `-v` option followed by the desired volume percentage (0-100):

```bash
sudo aumix -v 50
```

Example output:

```
Master volume: 50%
```

You can also use the `+` and `-` operators to increase or decrease the volume by a certain amount:

```bash
sudo aumix -v +10
```

Example output:

```
Master volume: 60%
```

```bash
sudo aumix -v -20
```

Example output:

```
Master volume: 40%
```

Feel free to experiment with different volume levels to find the one that suits your preference.
