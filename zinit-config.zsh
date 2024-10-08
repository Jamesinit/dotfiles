# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# 设置默认使用vim编辑器
export EDITOR=vim

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust \
    zsh-users/zsh-autosuggestions \
    zdharma-continuum/fast-syntax-highlighting \
    zdharma-continuum/history-search-multi-word

zinit ice wait blockf lucid
zinit light zsh-users/zsh-completions


#man 手册带颜色
zinit ice wait'2' lucid
zinit snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh
#解压缩文件
zinit ice wait'2' lucid
zinit snippet OMZ::plugins/extract/extract.plugin.zsh
#git alisa
zinit ice wait'1' lucid blockf
zinit snippet OMZ::plugins/git/git.plugin.zsh

zinit snippet OMZ::plugins/z/z.plugin.zsh

zinit ice wait blockf lucid
zinit snippet OMZ::plugins/docker
#/docker.plugin.zsh

#提示alias
zinit snippet https://github.com/MichaelAquilina/zsh-you-should-use/blob/master/you-should-use.plugin.zsh

### End of Zinit's installer chunk

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
