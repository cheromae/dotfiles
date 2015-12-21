# シンプルな zshrc
# License : MIT
# http://mollifier.mit-license.org/

# 環境変数
export LANG=ja_JP.UTF-8
export DOT_FILES=$HOME/dotfiles
#
# 補完機能を有効にする
autoload -Uz compinit
compinit

# cd したら自動的にpushdする
setopt auto_pushd
# 重複したディレクトリを追加しない
setopt pushd_ignore_dups

# グローバルエイリアス
alias -g L='| less'
alias -g G='| grep'

alias la='ls -la'
alias vi=vim


# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# emacs 風キーバインドにする
#bindkey -e

setopt no_flow_control

# Ctrl+Dでzshを終了しない
setopt ignore_eof

# '#' 以降をコメントとして扱う
setopt interactive_comments

# rbenv
export PATH="$PATH:$HOME/.rbenv/bin"
eval "$(rbenv init - zsh)"

# scripts
PATH=~/scripts/:$PATH

# zshrc_local
[ -f $DOT_FILES/.zshrc_local ] && . $DOT_FILES/.zshrc_local
