#!/bin/bash
MAIN_SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "$MAIN_SCRIPT_DIR/utils/check_command.sh"
# echo line number
if check_command "zsh"; then
    echo "Zsh already installed"
else
    echo "Installing Zsh"
    sudo apt install zsh && zsh --version && sudo chsh -s $(which zsh) $(whoami)
fi
