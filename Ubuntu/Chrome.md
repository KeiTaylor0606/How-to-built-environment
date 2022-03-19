# UbuntuにGoogle Chrome for Linuxをインストールする方法
以下の手順でコマンド実行
```
cd /tmp

sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i google-chrome-stable_current_amd64.deb

sudo apt install --fix-broken -y

sudo dpkg -i google-chrome-stable_current_amd64.deb
```

## 参考文献・サイト
- [Install Google Chrome for Linux](https://docs.microsoft.com/en-us/windows/wsl/tutorials/gui-apps#install-google-chrome-for-linux)