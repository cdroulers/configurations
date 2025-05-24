#!/bin/bash

SCRIPT_DIR="$(realpath $(dirname $0))"
ROOT_DIR=$(realpath $SCRIPT_DIR/..)

sudo ln -sfn "$ROOT_DIR/nvim" ~/.config/nvim
sudo ln -sfn "$ROOT_DIR/alacritty" ~/.config/alacritty
sudo ln -sfn "$ROOT_DIR/tmux/.tmux.conf" ~/.tmux.conf
sudo ln -sfn "$ROOT_DIR/zsh/.zprofile" ~/.zprofile
sudo ln -sfn "$ROOT_DIR/zsh/.zshrc" ~/.zshrc
sudo ln -sfn "$ROOT_DIR/zsh/.p10k.zsh" ~/.p10k.zsh
sudo ln -sfn "$ROOT_DIR/zsh/oh-my-zsh" ~/.oh-my-zsh

# Link tmux in a safe spot so `alacritty.toml` refers to the same path on all OS
sudo ln -sf "/usr/bin/tmux" "/usr/local/bin/tmux"
