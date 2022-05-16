# VS Code から SSH Remote 接続する方法

## Ubuntu 側

1. ポートフォワーディング設定
2. SSH 有効化
   > 以下のコマンドを実行
   >
   > `sudo apt install -y openssh-server`
   >
   > `sudo systemctl enable ssh`
   >
   > `sudo systemctl restart ssh`
   >
   > `sudo ufw enable`
   >
   > `sudo reboot`
   >
   > `sudo ufw allow 22`

## VS Code 側

1. マシンの追加
   > VS Code で `ssh target add new`で以下のコマンドを実行。例えば`Ubuntu`での`user name`を`hoge`とすると、
   >
   > `ssh hoge@localhost -p 2022`
