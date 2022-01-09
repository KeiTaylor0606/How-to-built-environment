# 仮想マシン(Ubuntu 想定)に Golang の環境構築を行う手順

## 1. Golang のインストール

以下の手順が一番簡単に最新のものをインストールできる。アップデートもの方法でできる。

```
sudo add-apt-repository ppa:longsleep/golang-backports

sudo apt update

sudo apt install golang-go

#Golangがインストールできているかの確認
go version
```

## 2. 拡張機能をインストール

拡張機能から「vscode-go」で検索。ヒットした拡張機能をインストール。

## 3. GOPATH の設定

ユーザー設定(`settings.json`)で GOPATH を設定。
VSCode での`setting.json`を開くには、コマンドパレット(`Ctrl + Shift + P`)から「`Preferences: Open Settings(JSON)`」或いは「`基本設定: 設定(JSON)を開く`」と検索

```
{
    //「go env GOPATH」と同じパスを
    "go.gopath": "/Users/[ユーザー名]/dev",
    "go.formatOnSave": true
}
```

## 4. コマンドラインツールのインストール

`Go: Install/Update Tools'で検索して、全てインストール。

# 参考文献

- [Visual studio code で GO 言語を開発する環境を整える](https://qiita.com/sasaron397/items/ec285b64607c1e7662e0)

- [VS Code の settings.json の開き方](https://qiita.com/y-w/items/614843b259c04bb91495)
