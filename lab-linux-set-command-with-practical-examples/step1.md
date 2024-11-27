# Understand the Purpose and Syntax of the set Command

In this step, you will learn about the purpose and syntax of the `set` command in Linux. The `set` command is used to set, unset, and display shell variables and options.

First, let's explore the syntax of the `set` command:

```bash
set [option] [variable[=value]]
```

Here, `option` represents the various options that can be used with the `set` command, and `variable[=value]` represents the shell variable you want to set or unset.

Some common options used with the `set` command include:

- `-a`: Automatically mark variables which are modified or created for export to the environment of subsequent commands.
- `-e`: Exit immediately if a command exits with a non-zero status.
- `-u`: Treat unset variables as an error when substituting.
- `-x`: Print commands and their arguments as they are executed.

To display all the currently set shell variables, you can simply run the `set` command without any arguments:

```bash
set
```

Example output:

```
BASH=/bin/bash
BASHOPTS=checkwinsize:cmdhist:complete_fullquote:expand_aliases:extglob:extquote:force_fignore:histappend:interactive_comments:progcomp:promptvars:sourcepath
BASH_ALIASES=()
BASH_ARGC=()
BASH_ARGV=()
BASH_CMDS=()
BASH_COMPLETION_COMPAT_DIR=/etc/bash_completion.d
BASH_LINENO=()
BASH_SOURCE=()
BASH_VERSINFO=([0]="5" [1]="1" [2]="4" [3]="1" [4]="release" [5]="x86_64-pc-linux-gnu")
BASH_VERSION='5.1.4(1)-release'
COLUMNS=80
COMP_WORDBREAKS=$' \t\n"\'><=;|&(:'
DIRSTACK=()
EUID=1000
GROUPS=()
HISTCONTROL=ignoreboth
HISTFILE=/home/labex/.bash_history
HISTFILESIZE=2000
HISTSIZE=1000
HOME=/home/labex
HOSTNAME=8d5d8d1f0a3f
HOSTTYPE=x86_64
IFS=$' \t\n'
LANG=en_US.UTF-8
LESSCLOSE='/usr/bin/lesspipe %s %s'
LESSOPEN='| /usr/bin/lesspipe %s'
LINES=24
LOGNAME=labex
LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:'
MACHTYPE=x86_64-pc-linux-gnu
MAILCHECK=60
OLDPWD=/home/labex
OPTERR=1
OPTIND=1
OSTYPE=linux-gnu
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
PIPESTATUS=([0]="0")
PPID=1
PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
PS2='> '
PS4='+ '
PWD=/home/labex/project
RANDOM=1836
READLINE_LINE=
READLINE_POINT=0
SHELL=/bin/bash
SHELLOPTS=braceexpand:hashall:interactive-comments:progcomp
SHLVL=1
SSH_CLIENT='172.17.0.1 52390 22'
SSH_CONNECTION='172.17.0.1 52390 172.17.0.2 22'
SSH_TTY=/dev/pts/0
TERM=xterm-256color
UID=1000
UPTIME_DAYS=0
UPTIME_HOURS=0
UPTIME_MINUTES=2
UPTIME_SECONDS=123
USER=labex
XDG_DATA_DIRS=/usr/local/share:/usr/share:/var/lib/snapd/desktop
XDG_RUNTIME_DIR=/run/user/1000
XDG_SESSION_ID=1
_=/usr/bin/env
```

As you can see, the `set` command displays all the currently set shell variables, including environment variables and shell options.

Now, let's explore how to use the `set` command to manage shell variables and options.
