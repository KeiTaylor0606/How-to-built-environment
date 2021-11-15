# Vue CLI プロジェクトの作成手順一覧

## 1. Node.js のインストール（既にしている人はパスして OK）

以下のコマンドを順に実行していく。

```
sudo apt install -y nodejs npm
sudo npm install n -g
sudo n stable
sudo apt purge -y nodejs npm
exec $SHELL -l
```

きちんとインストールされているかを確認する為に、以下のコマンドを実行。

```
node -v
```

## 2. Vue CLI のインストール

以下のコマンドを実行

```
npm install -g @vue/cli
```

インストールされているかの確認は以下を実行。

```
vue version
```

## 3. プロジェクトの自動生成

作成するプロジェクト名を[project name]と置く。以下のコマンドを実行。

```
vue create [project name]
```

## 4. アプリの実行

アプリの実行は以下のコマンドを実行。

```
cd [project name]
npm run serve
```

## 5. その他サブコマンド

```
vue add router
vue add vuex
```

## 参考文献
