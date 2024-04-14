#!/bin/bash

sudo apt install -y zsh && chsh -s $(which zsh)
echo -e "\e[32mPlease logout then zsh will work\e[0m"
