# 基本設定
sh ~/.dotfiles/components/linux/debian/settings.sh
# シンボリックリンク貼る
sh ~/.dotfiles/components/linux/debian/link.sh

# 必要なものをインストール
sh ~/.dotfiles/components/linux/debian/groceryStore.sh
sh ~/.dotfiles/components/linux/debian/serverStore.sh




echo "■■■■■■■■■■"
echo "やることリスト";
echo "- nvimで:PackerInstall";
sh ~/.dotfiles/components/independency/todo.sh
#シェルの再起動
exec $SHELL -l
