# Renaming Multiple Files with mren

In this step, we will explore more advanced use cases of the `mren` command for renaming multiple files.

Let's start by creating some sample files with different naming conventions:

```bash
cd ~/project
touch file001.txt file002.txt file003.txt
touch image01.jpg image02.jpg image03.jpg
```

Example output:

```
labex@ubuntu:~/project$ ls
file001.txt  file002.txt  file003.txt  image01.jpg  image02.jpg  image03.jpg
```

Now, let's say we want to rename all the "file" files to have a consistent format, like "myfile_001.txt", "myfile_002.txt", and so on. We can use the `mren` command with regular expressions to achieve this:

```bash
mren 'file(\d+).txt' 'myfile_\1.txt' *.txt
```

Example output:

```
labex@ubuntu:~/project$ ls
myfile_001.txt  myfile_002.txt  myfile_003.txt  image01.jpg  image02.jpg  image03.jpg
```

Similarly, let's rename all the image files to have a consistent format, like "image_01.jpg", "image_02.jpg", and so on:

```bash
mren 'image(\d+).jpg' 'image_\1.jpg' *.jpg
```

Example output:

```
labex@ubuntu:~/project$ ls
myfile_001.txt  myfile_002.txt  myfile_003.txt  image_01.jpg  image_02.jpg  image_03.jpg
```

The `mren` command allows you to use capture groups in the regular expression pattern to reference parts of the filename in the replacement. This makes it a powerful tool for complex file renaming operations.
