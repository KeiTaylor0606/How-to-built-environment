# Gitコマンド関連

## 作業ブランチにリモートの変更を取り込みたい場合
分岐元ブランチ:`develop`

作業ブランチ:`feature/xxxx`

として，手元の`feature/xxxx`にリモートの`feature/xxxx`の変更を取り込みたい場合は，`develop`上で`git pull`してから，`feature/xxxx`に戻って`git pull origin feature/xxxx`を実行．