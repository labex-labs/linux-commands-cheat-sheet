# Manage Environment Variables with the set Command

In this step, you will learn how to manage environment variables using the `set` command.

Environment variables are a special type of shell variables that are accessible to all processes running in the system. They are often used to store configuration settings, paths, and other important information.

Let's start by displaying the current environment variables:

```bash
set -o | grep -E '^[a-Z_]+='
```

Example output:

```
BASH_COMPLETION_COMPAT_DIR=/etc/bash_completion.d
HISTCONTROL=ignoreboth
HISTFILE=/home/labex/.bash_history
HISTFILESIZE=2000
HISTSIZE=1000
HOME=/home/labex
HOSTNAME=8d5d8d1f0a3f
LANG=en_US.UTF-8
LESSCLOSE='/usr/bin/lesspipe %s %s'
LESSOPEN='| /usr/bin/lesspipe %s'
LOGNAME=labex
LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:'
MACHTYPE=x86_64-pc-linux-gnu
MAILCHECK=60
OLDPWD=/home/labex
OPTERR=1
OPTIND=1
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
PIPESTATUS=([0]="0")
PPID=1
PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
PS2='> '
PS4='+ '
PWD=/home/labex/project
RANDOM=1836
SHELL=/bin/bash
SHELLOPTS=braceexpand:hashall:interactive-comments:progcomp
SHLVL=1
SSH_CLIENT='172.17.0.1 52390 22'
SSH_CONNECTION='172.17.0.1 52390 172.17.0.2 22'
SSH_TTY=/dev/pts/0
TERM=xterm-256color
UID=1000
USER=labex
XDG_DATA_DIRS=/usr/local/share:/usr/share:/var/lib/snapd/desktop
XDG_RUNTIME_DIR=/run/user/1000
XDG_SESSION_ID=1
_=/usr/bin/env
```

As you can see, the output includes a list of all the environment variables currently set in the system.

Now, let's create a new environment variable:

```bash
export MYENV_VAR="This is an environment variable"
```

To verify that the variable was created correctly, we can use the `echo` command:

```bash
echo $MYENV_VAR
```

Example output:

```
This is an environment variable
```

To make an environment variable read-only, you can use the `readonly` command:

```bash
readonly READONLY_ENV_VAR="This variable is read-only"
READONLY_ENV_VAR="New value"
```

Example output:

```
bash: READONLY_ENV_VAR: readonly variable
```

As you can see, attempting to modify the `READONLY_ENV_VAR` variable resulted in an error.
