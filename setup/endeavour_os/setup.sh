# 先にrtx入れて言語関係を楽にする
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_from_rtx_after.sh

sh ~/.dotfiles/components/linux/arch/endeavour_os/install_from_pacman.sh
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_starship.sh
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_fonts.sh
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_z.sh

sh ~/.dotfiles/components/linux/arch/endeavour_os/install_from_yay.sh

sh ~/.dotfiles/components/linux/arch/endeavour_os/install_xfce4-screenshooter.sh
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_docker-desktop.sh
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_cloudflare-warp.sh

# option
# sh ~/.dotfiles/components/linux/arch/endeavour_os/install_esp-idf.sh
# sh ~/.dotfiles/components/linux/arch/endeavour_os/install_obs.sh

# Surface Laptop3(Intel内蔵グラフィックス)向け
# sh ~/.dotfiles/components/linux/arch/endeavour_os/install_ybacklight.sh
# sh ~/.dotfiles/components/linux/arch/endeavour_os/install_google-cloud-cli.sh

# neovimのインストール(AstroNvimの依存関係がpacmanとかで被るので先にそれらを使う)
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_astroNvim.sh

# 必要事項のメッセージ
sh ~/.dotfiles/components/linux/arch/endeavour_os/after_finish.sh
