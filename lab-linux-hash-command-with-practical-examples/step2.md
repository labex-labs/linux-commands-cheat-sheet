# Calculating Hashes of Files and Directories

In this step, we will learn how to use the `hash` command to calculate cryptographic hash values for files and directories.

First, let's create a sample file that we can use for hashing:

```bash
echo "This is a sample file." > sample.txt
```

Now, we can calculate the hash value for this file using the `hash` command:

```bash
hash -t sha256 sample.txt
```

Example output:

```
sha256 (sample.txt) = 5d10c2c4d3dc5711938f617416b2b523c4d4f3ecd85a13d7c0c6f88a45b6ebc
```

The `hash` command has calculated the SHA-256 hash value for the `sample.txt` file.

You can also calculate hashes for directories. Let's create a sample directory and some files inside it:

```bash
mkdir sample_dir
touch sample_dir/file1.txt sample_dir/file2.txt sample_dir/file3.txt
```

Now, we can calculate the hash value for the entire directory:

```bash
hash -t sha256 sample_dir/
```

Example output:

```
sha256 (sample_dir/) = 6d5f807e23db210bc254a28be2abb02f48cf35f4c8d486276e2d56cbf0d3cd36
```

The `hash` command has calculated the SHA-256 hash value for the `sample_dir` directory, including all the files inside it.

You can use different hash algorithms by specifying the `-a` or `--algorithm` option, such as `md5`, `sha1`, `sha256`, or `sha512`.

```bash
hash -a md5 sample.txt
hash -a sha1 sample.txt
hash -a sha512 sample.txt
```

The calculated hash values can be used to verify the integrity of files, which we'll explore in the next step.
