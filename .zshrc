#zsh
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' menu select
autoload -Uz compinit
compinit -d '/data/data/com.termux/files/home/.cache/zcompdump'
HISTFILE='/data/data/com.termux/files/home/.cache/zhistfile'
HISTSIZE=500
SAVEHIST=500
setopt autocd extendedglob notify correct
unsetopt beep
bindkey -v
autoload -U colors && colors
PS1="%{$fg[green]%}%D{%a %d %b} %D{%H:%M} %{$reset_color%}%{$fg[red]%}zsh%{$reset_color%} %{$fg[blue]%}%~ %{$reset_color%}%{$fg[green]%}>%{$reset_color%}% "



#base commands	
alias "ls=ls --color=auto"
alias "grep=grep --color=auto"
alias cal='cal -m'
alias df='df -h /storage/emulated'
alias free='free -h'
alias du='du -h'

#neovim
export EDITOR=nvim
export VISUAL=nvim
alias edit=nvim

#rclone
export RCLONE_PROGRESS=true
export RCLONE_HUMAN_READABLE=true

#NNN file manager
if [ -f /data/data/com.termux/files/usr/share/nnn/quitcd.bash_sh_zsh ]; then
    source /data/data/com.termux/files/usr/share/nnn/quitcd.bash_sh_zsh
fi

export NNN_BMS='d:~/storage/downloads;g:~/storage/pictures/Gallery/owner;m:~/storage/music;E:/data/data/com.termux/files/usr/etc;e:~/.config;D:~/storage/dcim;'
export NNN_PLUG='f:fzopen;u:getplugs;i:-!|mediainfo "$nnn";l:-!less -iR "$nnn"*;s:-!|du -hs "$nnn"'
BLK="0B" CHR="0B" DIR="04" EXE="06" REG="00" HARDLINK="06" SYMLINK="06" MISSING="00" ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"
export NNN_ARCHIVE="\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)$"
export NNN_FIFO='/data/data/com.termux/files/usr/tmp/nnn.fifo'
alias n='n -ex'
alias nnn='n -ex'

#python
export PYTHONSTARTUP=~/.config/python/pythonrc
