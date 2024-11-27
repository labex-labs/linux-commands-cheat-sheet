# Verifying File Integrity Using hash

In this final step, we will learn how to use the `hash` command to verify the integrity of files by comparing their calculated hash values against known, trusted hash values.

Let's start by creating a checksum file that contains the expected hash values for our sample files:

```bash
cat << EOF > sample_checksums.txt
5d10c2c4d3dc5711938f617416b2b523c4d4f3ecd85a13d7c0c6f88a45b6ebc  sample.txt
6d5f807e23db210bc254a28be2abb02f48cf35f4c8d486276e2d56cbf0d3cd36  sample_dir/
EOF
```

This file contains the SHA-256 hash values for the `sample.txt` file and the `sample_dir` directory.

Now, we can use the `hash` command with the `-c` or `--check` option to verify the integrity of our files against the checksum file:

```bash
hash -c sample_checksums.txt
```

Example output:

```
5d10c2c4d3dc5711938f617416b2b523c4d4f3ecd85a13d7c0c6f88a45b6ebc  sample.txt
6d5f807e23db210bc254a28be2abb02f48cf35f4c8d486276e2d56cbf0d3cd36  sample_dir/
```

The output shows that the calculated hash values for the `sample.txt` file and the `sample_dir` directory match the expected values in the `sample_checksums.txt` file, indicating that the files have not been modified.

If the calculated hash value for a file does not match the expected value in the checksum file, the `hash` command will display an error message:

```bash
# Modify the sample.txt file
echo "This is a modified sample file." > sample.txt

hash -c sample_checksums.txt
```

Example output:

```
5d10c2c4d3dc5711938f617416b2b523c4d4f3ecd85a13d7c0c6f88a45b6ebc  sample.txt
sample.txt: FAILED
6d5f807e23db210bc254a28be2abb02f48cf35f4c8d486276e2d56cbf0d3cd36  sample_dir/
```

The output shows that the `sample.txt` file has failed the integrity check, indicating that the file has been modified since the checksum was generated.

The `hash` command is a powerful tool for verifying the integrity of files and directories, and it can be particularly useful in scenarios where data security and reliability are critical, such as software distribution, backups, and data transfers.
