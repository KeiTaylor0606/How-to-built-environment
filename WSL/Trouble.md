# 想定エラーとその対処法
## VS CodeからWSLに接続しようとすると、`VS Code Server for WSL closed unexpectedly`と言われ起動できなかった。
### 対処法
以下のコマンドを実行
```
rm -rf ~/.vscode-server/bin/
```
### 参考文献
- [VS Code Server for WSL closed unexpectedly と出て開けなくなった。](https://ginpen.com/2021/09/25/vs-code-server-fow-swl-closed-unexpectedly/)