#source zsh config
for conf in "$HOME/.config/zshrc.d/"*.zsh; do
  source "${conf}"
done
unset conf
