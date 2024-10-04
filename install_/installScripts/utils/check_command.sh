#!/bin/bash
SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "$SCRIPT_DIR/print_color.sh"
# Check if a command exists and is executable

# Usage: check_command <command>
# Example: check_command "ls"

# usage() {
#     print_colored "RED" "Usage: $0 command_name"
#     echo "Checks if the specified command is installed and returns 'true' or 'false'."
#     echo "Example: $0 ls"
# }

# if [ $# -ne 1 ]; then
#     usage
#     exit 1
# fi

check_command() {
    command -v "$1" >/dev/null 2>&1
}

# if check_command "$1"; then
#     echo "$1 is installed."
#     command -v "$1"
# else
#     echo "$1 is not installed"
#     exit 1
# fi
