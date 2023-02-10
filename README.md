# dotfiles

個人用のdotfiles集です。  
devcontainer内で使用することを想定しています。

## インストール

cloneしてinstall.shを実行します。  
postCreateCommandに仕掛けておくと便利

```shell
$ git clone https://github.com/meian/dotfiles.git
$ ./dotfiles/bin/install.sh
# 追加のツール類をインストールする場合はこれも実行する
$ init.sh
```

## 開発メモ

### 対象ファイル・ディレクトリ

リポジトリ配下のドットで始まる名称のファイル・ディレクトリがhome配下にリンクされます。  
※.gitを除く

新しいファイル・ディレクトリを追加したい場合はリポジトリ直下にドット開始で配置します。

### 動作確認

テストスクリプトを実行することでコンテナ上でインストール後にbashでアクセスした状態になります。

```shell
$ ./test/docker-test.sh
```

スクリプトが途中で失敗するとDocker上に `dotfiles-test_$RANDOM` のイメージが残ることがあるので適宜削除してください。
