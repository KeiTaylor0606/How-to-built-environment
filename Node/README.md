# Node

## Nodeのバージョンを管理・変更可能にする
以下のコマンドを順に実行
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

export NVM_DIR="$HOME/.nvm"

# ここで ターミナ再起動

# インストールできているか確認（任意）
nvm - v

# インストール可能バージョンの確認
nvm ls-remote

# インストールしたいバージョンを指定してインストール
nvm install 16.16.0

# インストール済みのバージョン確認
nvm ls

# インストールしたバージョンの使用
nvm use 16.16.0

```

### 参考文献・サイト
- [M2 Macにnode.jsをインストールする](https://c-limber.co.jp/blog/2610)
