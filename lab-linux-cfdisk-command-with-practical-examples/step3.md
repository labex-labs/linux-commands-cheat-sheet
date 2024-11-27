# Managing Disk Partitions with cfdisk

In this step, we will explore how to manage disk partitions using the cfdisk command.

First, let's launch the cfdisk utility on the disk image we created in the previous step:

```bash
sudo cfdisk ~/project/disk.img
```

This will open the cfdisk interface, where we can see the partition we created earlier.

Now, let's try some common partition management tasks:

1. **Deleting a Partition**:

   - Use the arrow keys to select the partition you want to delete.
   - Press the `Delete` function key (usually `F3`) to delete the selected partition.
   - Confirm the deletion by selecting the `Yes` option.

2. **Changing Partition Type**:

   - Use the arrow keys to select the partition you want to modify.
   - Press the `Type` function key (usually `F4`) to change the partition type.
   - Select the desired partition type and press Enter.

3. **Resizing a Partition**:

   - Use the arrow keys to select the partition you want to resize.
   - Press the `Resize` function key (usually `F5`) to resize the partition.
   - Specify the new size for the partition and press Enter.

4. **Writing Changes to Disk**:
   - After making the desired changes, press the `Write` function key (usually `F6`) to save the changes to the disk.
   - Confirm the write operation by typing "yes" and pressing Enter.

Remember, the changes you make to the disk partitions using cfdisk will only be applied after you select the `Write` option and confirm the operation.

Once you're done with the partition management tasks, you can exit cfdisk by selecting the `Quit` option.
