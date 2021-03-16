# 使い方

## 1. 環境の設定

よく使うコマンドなどの設定を行う。

```bash
./env_setup.sh
```

## 2. vimの設定

vimrcのコピーなども自動で呼ばれる。

```bash
./instal_vim.sh

# vimを開いて
:call dein#install()
```

## 3. x11vncの設定

リモートでGUIを使うときに便利である。

```bash
./install_x11vnc.sh
```

## 4. dockerのインストール

何かとお世話になるDocker様を入れる

```bash
# Dockerのインストール
# reference: https://docs.docker.com/engine/install/ubuntu/

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh && rm get-docker.sh

# 公開サーバーなどでは次のコマンドは入力しないこと!

sudo usermod -aG docker $USER
```