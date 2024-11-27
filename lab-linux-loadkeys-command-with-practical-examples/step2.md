# Changing the Keyboard Layout Using loadkeys

In this step, we will learn how to change the keyboard layout using the `loadkeys` command.

First, let's check the available keyboard layouts on our system:

```bash
ls /usr/share/keymaps/i386/qwerty/
```

Example output:

```
ad-latin1.map.gz  fr-latin1.map.gz  sv-latin1.map.gz
be2-latin1.map.gz  it2.map.gz        trq.map.gz
br-abnt2.map.gz   lt.map.gz         uk.map.gz
cf.map.gz         nl.map.gz         us.map.gz
de-latin1.map.gz  no-latin1.map.gz  wangbe.map.gz
```

To change the keyboard layout to French, we can use the following command:

```bash
sudo loadkeys fr-latin1
```

Example output:

```
Loading /usr/share/keymaps/i386/qwerty/fr-latin1.map.gz
```

Now, let's verify that the keyboard layout has been changed:

```bash
loadkeys -c
```

You should see the output reflecting the new French keyboard layout.

To change the keyboard layout back to the default, you can use:

```bash
sudo loadkeys -d
```

This will load the default keyboard map.
