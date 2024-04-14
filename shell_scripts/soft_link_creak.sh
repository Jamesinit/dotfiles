#!/bin/bash

echo ${PWD}

backup_file() {
	local file_path=${1}

	if [ -f "$file_path" ]; then
		file_path=$(realpath "$file_path")
		timestamp=$(date +'%Y%m%d-%H%M%S')
		local backup_file="${file_path}.${timestamp}"
		mv "${file_path}" "$backup_file"
		echo "File backup to $backup_file"
	else
		echo "File not exsit! $file_path"
	fi
}

detecte_zinit() {
	local zinit_home="${HOME}/.local/share}/zinit"
	if ! test -d "${zinit_home}"; then
		echo "Zinit exsit don't need install"
	else
		echo "zinit not installed"
		echo "Will auto install"
		source ./zinit_install.sh
	fi
}

main() {
	configs=("~/.zshrc")
	for config in "${configs[@]}"; do
		backup_file "${config}"
	done

	#insatll zinit
	detecte_zinit
	#create zshrc soft link
	ln -s "$(realpath "./zsh/zshrc")" $HOME/.zshrc
	if [ $? -eq 0 ]; then
		echo "create zsh soft link ok"
	else
		echo "create zsh soft link filed"
	fi
}

main
