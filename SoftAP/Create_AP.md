# ソフトウェア AP の構築方法 `create_ap` ver.（Ubuntu18.04 想定）

## 構築手順

以下のコマンドを順に実行

`git clone https://github.com/oblique/create_ap`

`cd create_ap`

`sudo make install`

`sudo apt-get install hostapd dnsmasq`

`create_ap wlan0 eth0 MyAccessPoint --no-virt`

`wlan0`、`eth0`は`ifconfig`で確認して適宜変更すること。

`MyAccessPoint`は自分が付けたい`AP`名を付けること。

(自分の場合は`--no-virt`つけないとエラーがでて立ち上がらなかった。)

## 参考文献・サイト

- [create_ap](https://github.com/oblique/create_ap)
- [Linux に WiFi アクセスポイントを設定する(再) ](https://blog.goediy.com/?p=407#toc7)
- [コマンド一発で Linux マシンを即席無線 LAN ルーターにできる「create_ap」がすごい便利だった](https://qiita.com/KuwaK/items/5903c7584657151d576a)
