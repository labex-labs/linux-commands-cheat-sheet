# Create a Software RAID Array Using mdadm

In this step, you will learn how to create a software RAID array using the `mdadm` command in Linux.

First, let's create four virtual block devices that will be used as the underlying storage for our RAID array:

```bash
sudo dd if=/dev/zero of=~/project/disk1.img bs=1M count=100
sudo dd if=/dev/zero of=~/project/disk2.img bs=1M count=100
sudo dd if=/dev/zero of=~/project/disk3.img bs=1M count=100
sudo dd if=/dev/zero of=~/project/disk4.img bs=1M count=100
```

Example output:

```
100+0 records in
100+0 records out
104857600 bytes (105 MB, 100 MiB) copied, 0.0730474 s, 1.4 GB/s
```

Next, let's create a RAID 5 array using these four virtual disks:

```bash
sudo mdadm --create /dev/md0 --level=5 --raid-devices=4 ~/project/disk1.img ~/project/disk2.img ~/project/disk3.img ~/project/disk4.img
```

Example output:

```
mdadm: chunk size defaults to 512K
mdadm: array /dev/md0 started.
```

The `mdadm` command creates a new RAID array named `/dev/md0` with a RAID level of 5 and 4 underlying devices.

Now, let's check the status of the RAID array:

```bash
sudo mdadm --detail /dev/md0
```

Example output:

```
/dev/md0:
           Version : 1.2
     Creation Time : Tue Apr 25 15:25:35 2023
        Raid Level : raid5
        Array Size : 307200 (300.00 MiB 314.43 MB)
     Used Dev Size : 100000 (97.66 MiB 102.40 MB)
      Raid Devices : 4
     Total Devices : 4
       Persistence : Superblock is persistent

       Update Time : Tue Apr 25 15:25:35 2023
             State : clean
    Active Devices : 4
   Working Devices : 4
    Failed Devices : 0
     Spare Devices : 0

            Layout : left-symmetric
        Chunk Size : 512K

Consistency Policy : resync

              Name : localhost.localdomain:0  (local to host localhost.localdomain)
              UUID : 6d2d9c1c:b4d2f9c4:8d6f0e8f:e0b0d4d5
            Events : 0

    Number   Major   Minor   RaidDevice State
       0       0        0        0      active sync   /home/labex/project/disk1.img
       1       0        1        1      active sync   /home/labex/project/disk2.img
       2       0        2        2      active sync   /home/labex/project/disk3.img
       3       0        3        3      active sync   /home/labex/project/disk4.img
```

The output shows that the RAID 5 array has been successfully created and is in a clean, active state.

In the next step, you will learn how to manage and monitor the software RAID array.
