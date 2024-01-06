#zsh
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' menu select
zstyle :compinstall filename '/data/data/com.termux/files/home/.zshrc'
autoload -Uz compinit
compinit -d '/data/data/com.termux/files/home/.cache/zcompdump'
HISTFILE='/data/data/com.termux/files/home/.cache/zhistfile'
HISTSIZE=500
SAVEHIST=500
setopt autocd extendedglob notify correct
unsetopt beep
bindkey -v
alias "ls=ls --color=auto"
alias "grep=grep --color=auto"
alias cal='cal -m'
autoload -U colors && colors
PS1="%{$fg[red]%}%D{%a %d %b} %D{%H:%M} %{$reset_color%}%{$fg[green]%}zsh%{$reset_color%} %{$fg[blue]%}%~ %{$reset_color%}%{$fg[red]%}>%{$reset_color%}% "

#neovim
export EDITOR=nvim
export VISUAL=nvim
alias edit=nvim

#rclone
export RCLONE_PROGRESS=true
export RCLONE_HUMAN_READABLE=true

#NNN file manager
export #NNN_BMS='c:~/.config/;d:~/doc;w:~/web;o:~/.local/opt;s:~/.local/share/Steam/steamapps;a:~/app;'
export NNN_PLUG='f:fzopen;u:getplugs;g:gpge;G:gpgd;i:-!|mediainfo "$nnn";l:-!less -iR "$nnn"*'
alias nnn='nnn -ex'

