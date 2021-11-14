# Files to backup
dotfiles=(
  ~/.tmux.conf
  ~/.config/nvim/init.vim
)

# Creates initial folder then clean it if it exists
mkdir ./dotfiles -v
rm -rf ./dotfiles/* -v

# Copy files to dotfiles folder
cp ${dotfiles[*]} ./dotfiles/ -rv
cd dotfiles

# Ignore this for files on root folder
# The commands from here are for multiple directories
mkdir ./.config -v
rm -rf ./.config/* -v
mkdir ./.config/nvim -v
rm -rf ./.config/nvim/* -v

# Configs with subdirectories inside config
mv ./init.vim ./.config/nvim -v
