# 必要なものをインストール
zshrc='
# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# メモリに保存される履歴の件数

export HISTSIZE=1000


# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000

# 重複を記録しない
setopt hist_ignore_dups

# 開始と終了を記録
setopt EXTENDED_HISTORY

eval "$(/usr/bin/rtx activate zsh)"

# bash_aliases読み込み
if [ -f ~/.bash_aliases ]; then                                                                                                                                                    
    . ~/.bash_aliases                                                                                                                                                          
fi 

# direnv用
eval "$(direnv hook zsh)"

plugins=( 
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting
)

# ctrl+rとか使えるようにする
bindkey -e
'
touch ~/.zshrc
echo "$zshrc" >>~/.zshrc

echo "bash_aliasesの読み込み設定"
aliasLoad="
# bash_aliases読み込み
if [ -f ~/.bash_aliases ]; then                                                                                                                                                    
. ~/.bash_aliases                                                                                                                                                          
fi 
"
# ubuntuと違ってbash_aliases読み込みの項目がないのでbashrcに上書き(zshは上で設定)
echo "$aliasLoad" >>~/.bashrc
touch ~/.zsh_history

#i3関連
exec --no-startup-id sleep 7 && firefox https://github.com/endeavouros-team/endeavouros-i3wm-setup/blob/main/force-knowledge.md

# 標準エディタの変更
sh ~/.dotfiles/components/linux/common/change_default_editor.sh
