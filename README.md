
# zsh插件配置
.zshrc配置
```zsh
#首先导出当前的PATH备份
export PATH=$HOME/.cargo/bin:$HOME/.nvm/versions/node/v18.20.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:$PATH

#导入配置
source "${HOME}/dotfiles/zinit-config.zsh"
source "${HOME}/dotfiles/alias.zsh"
```
#手动创建zinit中的completions文件夹
`mkdir -p ~/.cache/zinit/completions`

# tmux 配置
`ln -s ${HOME}/dotfiles/tmux.conf ~/.tmux.conf`
# nvim配置
ps:注意要安装lua
`sudo apt install lua5.4 -y`
`ln -s ~/dotfiles/nvim.lua ~/.config/nvim/init.lua`
