#!/bin/bash

echo ${PWD}

backup_file() {
	local file_path=${1}

	if [ -f "$file_path" ]; then
		file_path="$file_path"
		echo ${file_path}
		timestamp=$(date +'%Y%m%d-%H%M%S')
		local backup_file="${file_path}.${timestamp}.bak"
		echo ${backup_file}
		mv "${file_path}" "$backup_file"
		echo "File backup to $backup_file"
	else
		echo "File not exsit! $file_path"
	fi
}
main() {
	configs=("${HOME}/.zshrc")
	for config in "${configs[@]}"; do
		echo "path:"
		echo ${config}
		backup_file "${config}"
	done
	
	#insatll zinit
#	detecte_zinit

	echo "==============================="
#	rm ${HOME}/.zshrc
	#create zshrc soft link
	ln -s "$(realpath "../zsh/zshrc")" $HOME/.zshrc
	if [ $? -eq 0 ]; then
		echo "create zsh soft link ok"
	else
		echo "create zsh soft link filed"
	fi
}

main
