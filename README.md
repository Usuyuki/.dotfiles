# dotfiles

うすゆきてきとうかんきょう

NeoVim の設定は別リポジトリに

## Clone

コンテナなど一時的に使う環境は# スタートにあるコマンドをそのまま実行して良いが、dotfiles を更新する想定の場合は

```
eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/linux/common/github_initial_setting.sh)"
git clone git@github.com:usuyuki/.dotfiles.git ~/.dotfiles
```

で clone する

## 更新したい

```
eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/independency/update_dotfiles.sh)"
または
df-up
```

## シンボリックリンクだけ貼る

```
sh ~/.dotfiles/components/linux/common/link.sh
```

## GitHub との接続の初期設定したい

```
sh ~/.dotfiles/components/linux/common/github_initial_setting.sh
```

## 設定が間違ってないか確認したい

```
dc up -d
dc exec ubuntu bash
sh ~/.dotfiles/setup/docker/setup.sh
exec $SHELL -l
sh ~/.dotfiles/components/linux/debian/getApplication/packages/asdf/lang_installer.sh

```

exec がうまく効かないので……

でインストール手順を試す

- ここが~/.dotfiles にマウントされている
- docker だけど sudo できる一般ユーザー usuyuki が存在
- sytstemctl 系だめ
- echo 系もだめ

### 作り直し

```

dc down && dc up -d && dc exec ubuntu bash
sh ~/.dotfiles/setup/ubuntu_daily/setup.sh

```

# 概要

## 構成

- components：共通で使うもの
- config：各種設定ファイル
- setup：OS や利用ケースごとのセットアップ

## とても参考になる dotfiles 🥳

https://github.com/s3igo/dotfiles

# ちゅうい ⚠

- eval で読むシェルスクリプトはコメントアウトすると解析できなくなるので注意。
- sh での実行なのでパスをしっかり指定すること
- →wget や curl で取ってくる場合は(cd ~/ && curl)のようにサブシェルで実行すること

# すたーと 🍮

## 🪟

[windows](setup/win/setup.md)

> 普段使いで使う時の Windows の設定
> 📝PowerShell から Chocolatey 経由でぶちこむスタイル
> が、現状できていないので、pie in the sky

## 🏡 日常用途

### Ubuntu

ちゃんと動くようになってる。

```

eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/independency/init.sh)" && sh ~/.dotfiles/setup/ubuntu_daily/setup.sh

```

#### 既知の不具合

- asdf インストール前の必要ツールのインストールで使う apt install の対話シェルをうまく自動化できてない（一方はうまくいってるが、もう一方がうまくいかない)
- asdf で node がうまくインストールされない(再実行するとうまくいく)
- asdf で rust がうまくインストールされない(原因不明)
- asdf で php がインストールされるが composer や cs-fixer がインストールされない、PHP もそもそも入ってないかも？

> 普段使いで使う時の Ubuntu の設定
> fi### EndeavourOS(Arch Linux)

i3 の指定とインストール後の各種更新が終わった想定(Firefox は入ってない想定)

<img width="430" alt="image" src="https://github.com/usuyuki/.dotfiles/assets/63891531/12694f4a-8acd-4fa2-bc9f-64d7e45b1890">

```bash

eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/linux/common/github_initial_setting.sh)"
git clone git@github.com:usuyuki/.dotfiles.git ~/.dotfiles
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_essential.sh
logout

# zコマンドのインストール(fish上でないと実行できないのでシェルスクリプトでは無理)
fisher install jethrokuan/z

sh ~/.dotfiles/setup/endeavour_os/setup.sh
# mozkなどの兼ね合いでログインし直す
logout
```

## 📡(サーバー用途)

### ubuntu_hosting

未完成

> サーバー用で使う時の Ubuntu の設定

```

eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/independency/init.sh)" && sh ~/.dotfiles/setup/ubuntu_hosting/setup.sh

```

nginx 設定

```
sh ~/.dotfiles/components/linux/common/add_nginx_conf.sh
```

### ubuntu_hosting_arm

```

eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/independency/init.sh)" && sh ~/.dotfiles/setup/ubuntu_hosting_arm/setup.sh

```

### Raspberry Pi

apt-add-repository 系がことごとく失敗するので、普段使いはやめた

→ それはそうでは。apt-key を使う方式はもはや非推奨

## 🐋

[docker](setup/ubuntu_hosting/setup.md)

```

```
