# SSH Key の設定方法

GitHub では、作成したリポジトリへのアクセス認証を、SSH を利用した公開鍵認証で行う為、公開鍵認証に必要な SSH Key の作成と、GitHub への公開鍵の登録を行う。

以下のコマンドを順に実行する。ただし、GitHub に登録した時のメールアドレスを`your_email@example.com`と仮定する。

```
ssh-keygen -t ed25519 -C "your_email@example.com"
```

これを実行すると以下の様な結果が表示されるので、記述している指示に従う。

```
Generating public/private rssa key pair.
Enter file in which to save the key
(/Users/your_user_directory/.ssh/id_rsa): <--- Enterを押す！
Enter passphrase (empty for no passphrase): <--- Enterを押す！
Enter same passphrase again: <--- Enterを押す！
```

これが実行されると、鍵が生成される。(以下の様な画面が出るはず。)

```
Your identification has been saved in /Users/your_user_directory/.ssh/id_rsa.
Your public key has been saved in /Users/your_user_directory/.ssh/id_rsa.pub.
The key fingerprint
....
```

次に公開鍵の登録を行う。GitHub のサイトに入って、右上のアカウント設定ボタン（`Account Setting`）を押し、「`SSH Key`」のメニューを選択する。次に、「`Add SSH key`」を押して、「`Title`」には適当な鍵の名前を、「`Key`」には生成した`id_rsa.pub`の内容をコピーして貼り付ける。

`id_rsa.pub`の内容は以下のコマンドを実行すると見れる。

```
cat ~/.ssh/id_rsa.pub
```

登録が正式にできれば、以下のコマンドで GitHub との認証と通信ができる（`Are you sure you want to continue connecting (yes/no)?`と出るので、`yes`と入力）。

```
ssh -T git@github.com
```
