# sudoが使えないLinux環境で最低限どの生活をするためのシェルスクリプト
# homebrewを入れる



sh ~/usuyuki/.dotfiles/components/linux/debian/getApplication/packages/zellij.sh
# z
sh ~/usuyuki/.dotfiles/components/linux/debian/getApplication/packages/z.sh

# brew系統
brew install gtop
brew install rtx
# linuxではcaskでGUIソフトウェア入れられない(mac専用)
# brew install cask
# brew install --cask alacritty
brew install ranger
brew install tig
brew install peco
brew install git-delta
brew install starship
# WebAssembly関連
brew install wabt
brew install wasmer
# esp32ビルド関連
brew install llvm wasm-micro-runtime 

# esp32 rust
brew tap riscv-software-src/riscv
brew install riscv-tools

# esp-idf
brew install cmake ninja dfu-util # 依存
sh ~/usuyuki/.dotfiles/components/linux/debian/getApplication/packages/esp-idf.sh

# tinygo
brew install avrdude

# platformio
brew install platformio

#tinygo環境
brew tap tinygo-org/tools
brew install tinygo

# micropython
# pip install adafruit-ampy esptool
brew install picocom #シリアル通信でメッセージ遅れるやつ

# mruby
brew install mruby

# starshipのパスの追加
echo 'eval "$(starship init bash)"' >> ~/.bashrc

# linuxでもbrewでfontを入れたい
brew tap homebrew/linux-fonts
brew install font-hack-nerd-font

brew install neovim
# astroNvim依存
brew install ripgrep
brew install jesseduffield/lazygit/lazygit
brew install bottom
brew install -f gdu

# nodeを入れる
