# dotfiles

うすゆきてきとうかんきょう

まだとちゅう

## 更新したい

```
eval "$(curl -L raw.githubusercontent.com/Usuyuki/dotfiles/main/components/update_dotfiles.sh)"
```

## 設定が間違ってないか確認したい

```
dc up -d
dc exec ubuntu bash
cd .dotfiles && make docker
sh ~/.dotfiles/setup/docker/setup.sh
exec $SHELL -l
sh ~/.dotfiles/components/linux/debian/installer/lang_installer.sh

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
sh ~/.dotfiles/setup/docker/setup.sh

```

# 概要

## 構成

- components：共通で使うもの
- config：各種設定ファイル
- setup：OS や利用ケースごとのセットアップ

## とても参考になる dotfiles 🥳

https://github.com/s3igo/dotfiles

# ちゅうい ⚠

eval で読むシェルスクリプトはコメントアウトすると解析できなくなるので注意。

# すたーと 🍮

## 🪟

[windows](setup/win/setup.md)

> 普段使いで使う時の Windows の設定
> 📝PowerShell から Chocolatey 経由でぶちこむスタイル
> が、現状できていないので、pie in the sky

## 🐧

### Raspberry Pi OS 64bit 🍓

```

eval "$(curl -L raw.githubusercontent.com/Usuyuki/dotfiles/main/components/independency/init.sh)" && sh ~/.dotfiles/setup/ubuntu_daily/setup.sh

```

### ubuntu_daily

ぎりぎり動く

```

eval "$(curl -L raw.githubusercontent.com/Usuyuki/dotfiles/main/components/independency/init.sh)" && sh ~/.dotfiles/setup/ubuntu_daily/setup.sh

```

> 普段使いで使う時の Ubuntu の設定

### ubuntu_hosting

未完成

> サーバー用で使う時の Ubuntu の設定

```

eval "$(curl -L raw.githubusercontent.com/Usuyuki/dotfiles/main/components/independency/init.sh)" && sh ~/.dotfiles/setup/ubuntu_hosting/setup.sh

```

## 🐋

[docker](setup/ubuntu_hosting/setup.md)

```

```
