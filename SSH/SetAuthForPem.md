# Windows で pem ファイルの権限を変更する方法

EC2 に VS Code から SSH Remote 接続仕様とした時に発生する、`pem`ファイルの権限トラブルについての対処法

# 実行手順

以下のコマンドを順に実行する（`pem`ファイルの名前は`hoge`、現行のユーザー名は`huga`と仮定する）。

1. `pem`ファイルが保存されているディレクトリに移動（通常`.\ssh`）
   > `cd ~/.ssh`
1. 現状付与されている権限を全て削除
   > `icacls .\hoge.pem /inheritance:r`
1. 現行のユーザーのみ権限を付与
   > `icacls .\hoge.pem /grant "huga:(F)"`
