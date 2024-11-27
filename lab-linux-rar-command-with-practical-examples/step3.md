# Manage rar Archives with Advanced Options

In this step, we will explore some advanced options for managing RAR archives using the `rar` command.

First, let's create a new RAR archive with password protection:

```bash
rar a -p password sample_encrypted.rar sample_files/*.txt
```

Example output:

```
RAR 6.10   Copyright (c) 1993-2022 Alexander Roshal   25 Mar 2022
Evaluation copy. Registration is required for private or commercial use.

Enter password:
Verify password:

Adding files to archive sample_encrypted.rar

Creating archive sample_encrypted.rar

Archiving  file1.txt
Archiving  file2.txt
Archiving  file3.txt

The archive has been updated successfully.
```

The `-p` option allows you to set a password for the RAR archive. You will be prompted to enter and verify the password.

Next, let's extract the encrypted archive:

```bash
rar x sample_encrypted.rar extracted_encrypted
```

Example output:

```
RAR 6.10   Copyright (c) 1993-2022 Alexander Roshal   25 Mar 2022
Evaluation copy. Registration is required for private or commercial use.

Enter password:
Extracting  file1.txt
Extracting  file2.txt
Extracting  file3.txt

All files were extracted
```

The `rar x` command extracts the contents of the encrypted `sample_encrypted.rar` archive to the `extracted_encrypted` directory. You will be prompted to enter the password.

Now, let's list the contents of the RAR archive:

```bash
rar l sample_encrypted.rar
```

Example output:

```
RAR 6.10   Copyright (c) 1993-2022 Alexander Roshal   25 Mar 2022
Evaluation copy. Registration is required for private or commercial use.

Enter password:
Listing archive: sample_encrypted.rar

------------------------------------------------------------------
Name                 Packed  Size  Ratio  Date    Time   Attr
------------------------------------------------------------------
file1.txt            36      0     0.00%  05-22-23 12:34  ....
file2.txt            36      0     0.00%  05-22-23 12:34  ....
file3.txt            36      0     0.00%  05-22-23 12:34  ....
------------------------------------------------------------------
Total files: 3               108    0.00%
```

The `rar l` command lists the contents of the `sample_encrypted.rar` archive. You will be prompted to enter the password.

Finally, let's delete the `sample_encrypted.rar` archive:

```bash
rar d sample_encrypted.rar
```

Example output:

```
RAR 6.10   Copyright (c) 1993-2022 Alexander Roshal   25 Mar 2022
Evaluation copy. Registration is required for private or commercial use.

Enter password:
Deleting files from archive sample_encrypted.rar

The archive has been updated successfully.
```

The `rar d` command deletes the `sample_encrypted.rar` archive. You will be prompted to enter the password.
