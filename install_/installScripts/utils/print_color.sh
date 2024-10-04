#!/bin/bash

# 定义颜色代码
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
NC='\033[0m' # No Color

# 定义一个函数来打印彩色文本
print_colored() {
    local color_name=$1
    local color=${!color_name}
    local message=$2
    echo -e "${color}${message}${NC}"
}

# 使用函数
#print_colored "RED" "This is red text"
#print_colored "GREEN" "This is green text"
#print_colored "YELLOW" "This is yellow text"
#print_colored "BLUE" "This is blue text"
#print_colored "PURPLE" "This is purple text"
#print_colored "CYAN" "This is cyan text"
#print_colored "WHITE" "This is white text"