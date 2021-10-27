# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Export Set
export ZSH="$HOME/.oh-my-zsh"
# 下面的 3 行命令表示,每次新建一个终端会话时,
# 默认让终端去走代理,这样就不需要每次都复制拷贝一下了,
# 方便的同时,代理程序去智能分流(国内 IP 直连,国外走代理),
# 避免了连接国内 IP 地址时“绕远”.
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="$PATH:./node_modules/.bin"

# Base Set
COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"
# ZSH_DISABLE_COMPFIX="true"
ZSH_CUSTOM_AUTOUPDATE_QUIET="true"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins Set
plugins=(
  autojump
  autoupdate
  git
  gitfast
  zsh-autosuggestions
  zsh-syntax-highlighting
)

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

source $ZSH/oh-my-zsh.sh
# source ~/.bash_profile
if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile;
fi

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Alias Set
# 下面这几个 alias 是自定义的命令
# unsetproxy 取消代理
# setproxy 设置代理
# ip & ipcn  查看 IP
alias setproxy="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890;echo \"Set proxy successfully\" "
alias unsetproxy="unset http_proxy;unset https_proxy;unset all_proxy;echo \"Unset proxy successfully\" "
alias ipcn="curl myip.ipip.net"
alias ip="curl ip.sb"
# alias suroot="sudo -E -s"

alias cask-upgrade="brew cu --all --yes --cleanup"
alias ll='ls -alFh'
alias ncu='nocorrect ncu'
alias ysb='nocorrect yarn storybook'
# alias flushdns='sudo killall -HUP mDNSResponder'

unsetopt correct_all
setopt correct

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
