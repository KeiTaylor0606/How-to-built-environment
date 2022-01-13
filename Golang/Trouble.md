# 想定エラーとその対処法
## `go get`したのに`command not found`といわれる
```
# pathの確認
go env

# pathが通っているか確認
echo $PATH

# pathが通っていなければ通す
exprot PATH="$HOME/go/bin:$PATH"
```
### 参考文献・サイト
- [go get後に「command not found」が出るとイラっとする件](https://selfnote.work/20210513/programming/go-error-command-not-found/)