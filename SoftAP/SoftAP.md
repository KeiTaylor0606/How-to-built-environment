# ソフトウェア AP の構築方法（Ubuntu18.04 想定）

## 構築環境

- Ubuntu 18.04

## 構築手順

1. WiFi アダプタの確認
   > 以下のコマンドを実行して、WiFi アダプタを確認する。
   > `sudo lshw -class network -short`
2. バイナリ関係のインストール
   > `sudo apt-get install hostapd`
3. systemctl 関連のおまじない
   > 以下のコマンドを実行する。
   >
   > `sudo systemctl unmask hostapd`
   >
   > `sudo systemctl enable hostapd`
4. 設定ファイルの場所を`/etc/default/hostapd`に指定
   > `/etc/default/hostapd`の`#DAEMON_CONF`のコメントアウトを消して、以下の様に記述。
   >
   > `DAEMON_CONF="/etc/hostapd/hostapd.conf"`
5. `hostapd.conf`に設定の記述
   > `/etc/hostapd/hostapd.conf`を開いて（`/etc/hostapd`下に該当の設定ファイルが無かったら作って）、以下の設定を書く。（以下は構築時の例）
   >
   > ```
   > interface=wlx00c0ca991258
   > hw_mode=g
   > channel=10
   > auth_algs=1
   > wpa=2
   > wpa_key_mgmt=WPA-PSK
   > rsn_pairwise=CCMP
   > ssid=ES3testAP
   > wpa_passphrase=goodlife
   > ```
6. WiFi アダプタの IP アドレス設定
   > WiFi LAN 側アドレスを 192.168.11.1 に設定する場合は、以下のコマンドを実行すれば良い。
   >
   > `sudo ip address add 192.168.11.1/24 dev wlx00c0ca991258`
7. DHCP サーバの起動
   > まずはインストール。以下のコマンドを実行
   >
   > `sudo apt-get install isc-dhcp-server`
   >
   > 次に、`/etc/dhcp/dhcpd.conf`を以下の様に作成。デフォルトルートに`192.168.11.1`を、ネームサーバは`10.0.0.1`を指定している。
   >
   > ```
   > default-lease-time 600;
   > max-lease-time 7200;
   >
   > ddns-update-style none;
   > authoritative;
   >
   > subnet 192.168.11.0 netmask 255.255.255.0 {
   >   range 192.168.11.10 192.168.11.100;
   >   option routers 192.168.11.1;
   >   option subnet-mask 255.255.255.0;
   >   option domain-name-servers 10.0.0.1;
   > }
   > ```
   >
   > 設定ファイルを保存したら、以下のコマンドを実行する。
   >
   > `sudo ip link set wlx00c0ca991258 up`
   >
   > そして、DHCP サーバを起動する。
   >
   > `sudo systemctl start isc-dhcp-server`
8. NAT の設定
   > WiFi LAN と有線 LAN との間でパケットのやり取りができるように設定する。
   > `/etc/sysctl.conf`に`IPv4 forward`有効化の設定（再起動しないと反映されないので注意）を行う。
   > `net.ipv4.ip_forward=1`
   > iptable を使って NAT の設定を行う。
   > 以下のコマンドを実行する
   >
   > `sudo iptables -A FORWARD -i wlx00c0ca991258 -o enp0s3 -s 192.168.11.0/24 -j ACCEPT`
   >
   > `sudo iptables -A FORWARD -m state --state ESTABLISHED,RELATED -j ACCEPT`
   >
   > `sudo iptables -t nat -A POSTROUTING -o enp0s3 -s 192.168.11.0/24 -j MASQUERADE`
9. `hostapd`を再起動
   > 以下のコマンドを実行
   >
   > `sudo systemctl restart hostapd`

## 参考文献・サイト

- [hostapd を使った Ubuntu の WiFi アクセスポイント化](https://blog.goediy.com/?p=300)
- [Ubuntu PC をオンデマンド起動の WiFi アクセスポイントにする ](https://blog.goediy.com/?p=279)
