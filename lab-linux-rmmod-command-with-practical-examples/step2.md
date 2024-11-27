# Remove a Kernel Module Using rmmod

In this step, we will learn how to remove a kernel module using the `rmmod` command.

First, let's list the currently loaded kernel modules using the `lsmod` command:

```bash
sudo lsmod
```

Example output:

```
Module                  Size  Used by
vboxguest              454656  0
snd_hda_codec_realtek   114688  1
snd_hda_codec_generic    86016  1 snd_hda_codec_realtek
snd_hda_intel           53248  0
snd_hda_codec          135168  3 snd_hda_codec_generic,snd_hda_codec_realtek,snd_hda_intel
snd_hda_core            90112  5 snd_hda_codec_generic,snd_hda_codec_realtek,snd_hda_intel,snd_hda_codec
snd_hwdep               16384  1 snd_hda_codec
snd_pcm                106496  4 snd_hda_intel,snd_hda_codec
snd_timer               32768  1 snd_pcm
snd                     98304  21 snd_hda_codec_generic,snd_hda_codec_realtek,snd_hda_intel,snd_hda_codec,snd_hwdep,snd_pcm,snd_timer
soundcore               16384  1 snd
```

Let's say we want to remove the `vboxguest` module. To do this, we can use the `rmmod` command:

```bash
sudo rmmod vboxguest
```

After running this command, let's verify that the module has been removed by checking the output of `lsmod` again:

```bash
sudo lsmod
```

Example output:

```
Module                  Size  Used by
snd_hda_codec_realtek   114688  1
snd_hda_codec_generic    86016  1 snd_hda_codec_realtek
snd_hda_intel           53248  0
snd_hda_codec          135168  3 snd_hda_codec_generic,snd_hda_codec_realtek,snd_hda_intel
snd_hda_core            90112  5 snd_hda_codec_generic,snd_hda_codec_realtek,snd_hda_intel,snd_hda_codec
snd_hwdep               16384  1 snd_hda_codec
snd_pcm                106496  4 snd_hda_intel,snd_hda_codec
snd_timer               32768  1 snd_pcm
snd                     98304  21 snd_hda_codec_generic,snd_hda_codec_realtek,snd_hda_intel,snd_hda_codec,snd_hwdep,snd_pcm,snd_timer
soundcore               16384  1 snd
```

You can see that the `vboxguest` module is no longer listed, indicating that it has been successfully removed.
