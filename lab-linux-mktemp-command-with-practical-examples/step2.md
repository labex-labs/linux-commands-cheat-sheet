# Creating Temporary Files with mktemp

In this step, we will learn how to use the `mktemp` command to create temporary files with specific file names and locations.

First, let's create a temporary file in the default system temporary directory (`/tmp`):

```bash
$ mktemp
/tmp/tmp.Hx6Ixq8Bxe
```

As you can see, the `mktemp` command generates a unique filename in the `/tmp` directory.

You can also specify a custom template for the temporary file name. The template should end with "XXXXXX", which will be replaced with a unique string of characters. For example:

```bash
$ mktemp /tmp/myfile.XXXXXX
/tmp/myfile.Hx6Ixq8Bxe
```

In this case, the temporary file name will start with "myfile." and end with a unique string of characters.

To create a temporary file in the current working directory, you can use the following command:

```bash
$ mktemp --tmpdir=~/project myfile.XXXXXX
/home/labex/project/myfile.Hx6Ixq8Bxe
```

The `--tmpdir` option allows you to specify the directory where the temporary file should be created. In this example, the temporary file is created in the `~/project` directory.

Example output:

```
/home/labex/project/myfile.Hx6Ixq8Bxe
```

The `mktemp` command can also be used to create temporary directories. To do this, you can use the `-d` option:

```bash
$ mktemp -d /tmp/mydir.XXXXXX
/tmp/mydir.Hx6Ixq8Bxe
```

This will create a temporary directory with a unique name in the `/tmp` directory.
