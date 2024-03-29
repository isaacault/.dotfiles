# FLAGS:
# -b : create a backup of existing destinations
# -f : rewrite over existing destinations
FLAG=$1

DOTFILES_ROOT=$HOME/.dotfiles/

if [[ -z "$XDG_CONFIG_HOME" ]]; then
    echo "Must provide XDG_CONFIG_HOME in environment" 1>&2
    exit 1
fi

# don't use this
# I think these are backwards rn

ln -s $FLAG $DOTFILES_ROOT/zsh $HOME/.zsh
ln -s $FLAG $DOTFILES_ROOT/zsh/zshrc $HOME/.zshrc
ln -s $FLAG $DOTFILES_ROOT/zsh/p10k.zsh $HOME/.p10k.zsh
ln -s $FLAG $DOTFILES_ROOT/i3 $XDG_CONFIG_HOME/i3
ln -s $FLAG $DOTFILES_ROOT/polybar $XDG_CONFIG_HOME/polybar
ln -s $FLAG $DOTFILES_ROOT/nvim $XDG_CONFIG_HOME/nvim
ln -s $FLAG $DOTFILES_ROOT/tmux/tmux.conf $HOME/.tmux.conf
ln -s $FLAG $DOTFILES_ROOT/waybar $XDG_CONFIG_HOME/waybar
ln -s $FLAG $DOTFILES_ROOT/sway $XDG_CONFIG_HOME/sway
