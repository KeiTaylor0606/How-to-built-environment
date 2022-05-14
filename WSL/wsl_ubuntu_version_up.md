# 【WSL2】Ubuntu20.04 LTSを22.04 LTSへアップグレードする方法
## 手順
### 1. 現行バージョンの確認
```bash
cat /etc/os-release
```
### 2. パッケージの依存解決
```bash
sudo apt update && sudo apt upgrade
````
### 3. ディストリビューションアップデート確認
```bash
sudo apt dist-upgrade && sudo apt install update-manager-core
```
### 4. relese-upgradeの設定
```bash
sudo vim /etc/update-manager/release-upgrades
```
### 5. アップデート実行
```bash
sudo do-release-upgrade -d
```
※アップグレードの途中でsshdの設定について聞かれる場合があるが，ここでは「現在インストールされているローカルバージョンを保持」を選択．
### 6. 実行結果の確認
```bash
cat /etc/os-release
```
## 参考文献・サイト
- [【WSL2】Ubuntu 20.04.4 LTS を 22.04 LTS へアップグレードした](https://zenn.dev/ryuu/articles/upgrade-ubuntu2204-wsl)