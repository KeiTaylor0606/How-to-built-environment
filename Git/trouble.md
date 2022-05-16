# 想定トラブルとその対処法

## `git push`したら`fatal: Authentication failed for ~~`といわれ`push`できない

> ## 手順
>
> 以下のコマンドを実行
>
> ```bash
> git remote -v
> git remote set-url origin git@github.com:USERNAME/REPONAME.git
> ```
>
> ## 参考文献・サイト
>
> - [Git push results in "Authentication Failed"](https://stackoverflow.com/questions/17659206/git-push-results-in-authentication-failed)
