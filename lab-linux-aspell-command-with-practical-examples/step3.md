# Customize aspell Dictionary and Preferences

In this step, we will learn how to customize the aspell dictionary and preferences to suit our needs.

First, let's create a personal dictionary file:

```bash
touch ~/project/.aspell.en.pws
```

This file will store the words that we want to add to the aspell dictionary.

Now, let's add a word to the personal dictionary:

```bash
echo "linux" >> ~/project/.aspell.en.pws
```

Next, we can customize the aspell preferences by creating a configuration file:

```bash
touch ~/project/.aspellrc
```

In this file, we can set various preferences, such as the language, the mode of operation, and the personal dictionary file. Here's an example configuration:

```
personal ~/project/.aspell.en.pws
master en
mode html
```

This configuration sets the personal dictionary file to `~/.aspell.en.pws`, the master dictionary to English, and the mode of operation to HTML.

To use the custom dictionary and preferences, we can run the aspell command with the `--personal` and `--config` options:

```bash
aspell --personal=~/project/.aspell.en.pws --config=~/project/.aspellrc check ~/project/sample.txt
```

This will use the custom dictionary and preferences when checking the `sample.txt` file.
