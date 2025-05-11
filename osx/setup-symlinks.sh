#!/bin/bash

SCRIPT_DIR="$(realpath $(dirname $0))"
ROOT_DIR=$(realpath $SCRIPT_DIR/..)

sudo ln -sfn "$ROOT_DIR/nvim" ~/.config/nvim
sudo ln -sfn "$ROOT_DIR/alacritty" ~/.config/alacritty
sudo ln -sfn "$ROOT_DIR/tmux/.tmux.conf" ~/.tmux.conf
sudo ln -sfn "$ROOT_DIR/zsh/.zprofile" ~/.zprofile
