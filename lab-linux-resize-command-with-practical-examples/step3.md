# Resize an LVM Volume Group and Logical Volume

In this step, we will learn how to resize an LVM (Logical Volume Management) volume group and a logical volume using the `resize` command.

First, let's create an LVM volume group and a logical volume:

```
# Create a physical volume
sudo pvcreate /dev/sdc

# Create a volume group
sudo vgcreate vg0 /dev/sdc

# Create a logical volume
sudo lvcreate -L 5G -n lv0 vg0
```

Example output:

```
  Physical volume "/dev/sdc" successfully created.
  Volume group "vg0" successfully created
  Logical volume "lv0" created.
```

Now, let's resize the logical volume `lv0` to 10GB:

```
# Resize the logical volume
sudo lvresize -L 10G /dev/vg0/lv0
```

Example output:

```
  Size of logical volume vg0/lv0 changed from 5.00 GiB to 10.00 GiB.
  Logical volume vg0/lv0 successfully resized.
```

To verify the new size of the logical volume, we can use the `lvdisplay` command:

```
sudo lvdisplay /dev/vg0/lv0
```

Example output:

```
  --- Logical volume ---
  LV Path                /dev/vg0/lv0
  LV Name                lv0
  VG Name                vg0
  LV UUID                zVBxkH-Tn7d-1234-abcd-1234-1234-1234abcd
  LV Write Access        read/write
  LV Creation host, time labex-ubuntu, 2023-04-18 12:34:56 +0000
  LV Status              available
  # open                 0
  LV Size                10.00 GiB
  Current LE             2560
  Segments               1
  Allocation             inherit
  Read ahead sectors     auto
  - currently set to     8192
  Block device           253:0
```

As you can see, the size of the logical volume `lv0` has been successfully resized to 10GB.
