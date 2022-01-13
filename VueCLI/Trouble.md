# 想定エラーとその対処法
## `npm run serve`したら`sh: 1: vue-cli-service: not found`といわれた
### 対処法
プロジェクトディレクトリ直下で以下のコマンドを実行
```
rm -rf node_modules package-lock.json && npm install
```
### 参考文献
- [vue-cli-service: command not foundと言われたらnode_modulesを削除](https://ysko909.github.io/posts/fix-vue-cli-service-command-not-found-error/)

## フロントからバックエンドにパラメータが飛ばない
### 対処法
以下の二つの方法を試す。
1. `Vue`プロジェクトディレクトリで以下のコマンドを実行
```
npm run build
```
`dist`ディレクトリができたらOK（多分）。

2. `Golang`の`Echo`を用いている場合、サーバー起動場所に以下のコードを追加
```
e.Use(middleware.CORS())
```
