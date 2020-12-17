# dotfiles

dotfiles リポジトリは, 様々な設定ファイルを管理するためのリポジトリ.

## 設定手順

### 1. 当リポジトリを clone

当リポジトリを `~/workspace` 直下に clone する.

### 2. シンボリックリンクを張る

下記ファイルを実行することで, シンボリックリンクを張る.

``` sh
~/workspace/dotfiles/dotfilesLink.sh
```

設定は以上で完了.

## 設定ファイルを編集する場合

設定ファイルを編集する場合, 当リポジトリのファイルを編集すること. シンボリックリンクを張っているため, 参照元のファイル内容も自動的に変更される.

もし当リポジトリのファイル構成を変更する場合は, `dotfilesLink.sh` ファイル内のパスを変更することを忘れないよう注意.
