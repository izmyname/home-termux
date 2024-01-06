zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' menu select
autoload -Uz compinit
compinit -d '/data/data/com.termux/files/home/.cache/zcompdump'
HISTFILE='/data/data/com.termux/files/home/.cache/zsh_history'
HISTSIZE=500
SAVEHIST=500
setopt autocd extendedglob notify correct
unsetopt beep
bindkey -v
autoload -U colors && colors
PS1="%{$fg[red]%}%D{%a %d %b} %D{%H:%M} %{$reset_color%}%{$fg[green]%}zsh%{$reset_color%} %{$fg[blue]%}%~ %{$reset_color%}%{$fg[red]%}>%{$reset_color%}% "
