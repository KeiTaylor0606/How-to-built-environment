# 想定エラーとその対処法
## `npm run serve`したら`sh: 1: vue-cli-service: not found`といわれた
### 対処法
プロジェクトディレクトリ直下で以下のコマンドを実行
```
rm -rf node_modules package-lock.json && npm install
```
### 参考文献
- [vue-cli-service: command not foundと言われたらnode_modulesを削除](https://ysko909.github.io/posts/fix-vue-cli-service-command-not-found-error/)
