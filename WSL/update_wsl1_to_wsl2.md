# WSL1からWSL2へのアップデート方法

## 手順

1. WSL2 用の Linux カーネルアップデートファイルを[サイト](https://docs.microsoft.com/en-us/windows/wsl/wsl2-kernel)からダウンロードする（すでに一度アップデートしたことがあるならダウンロードしなくていい）。
2. Windows Power Shell を管理者権限で開き、
   ```
   wsl -l -v
   ```
   を実行する。
3. 以下のコマンドを実行し、実行が完了したら PC を再起動する（これも一度アップデートした頃があるならしなくていい）。
   ```
   dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
   ```
4. `wsl -l -v`で確認したマシンの名前を NAME とした時、以下のコマンドを実行する（念のため管理者権限で）。
   ```
   wsl --set-version NAME 2
   ```

## 参考文献

- [WSL1 から WSL2 へバージョンアップ・変換する方法](https://loumo.jp/archives/25294)

## その他

- [Comparing WSL1 and WSL2](https://docs.microsoft.com/en-us/windows/wsl/compare-versions)
