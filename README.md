# Dotfiles

個人的な設定ファイルを[chezmoi](https://www.chezmoi.io/)で管理しています。

## 管理しているファイル

- `.zshrc` - Zshシェルの設定ファイル

## セットアップ

### 新しいマシンでの初回セットアップ

```bash
# chezmoiをインストール
brew install chezmoi

# dotfilesをクローンして適用
chezmoi init --apply git@github.com:koskywalker/dotfiles.git
```

### 段階的セットアップ

```bash
# 初期化のみ
chezmoi init git@github.com:koskywalker/dotfiles.git

# 変更内容を確認
chezmoi diff

# 設定を適用
chezmoi apply
```

## 日常の運用

### 設定ファイルの編集

```bash
# chezmoiエディタで編集（推奨）
chezmoi edit ~/.zshrc

# または直接編集してから取り込み
vim ~/.zshrc
chezmoi add ~/.zshrc
```

### 変更の確認と適用

```bash
# 差分を確認
chezmoi diff

# ドライラン（実際には適用しない）
chezmoi apply --dry-run

# 実際に適用
chezmoi apply
```

### Git操作

```bash
# chezmoiディレクトリに移動
chezmoi cd

# 変更をコミットしてプッシュ
git add .
git commit -m "Update shell configuration"
git push

# 元のディレクトリに戻る
exit
```

### 他のマシンでの更新取得

```bash
# 最新の変更を取得して適用
chezmoi update
```

## 新しいファイルの追加

```bash
# 新しい設定ファイルを管理対象に追加
chezmoi add ~/.vimrc
chezmoi add ~/.gitignore_global

# 確認して適用
chezmoi diff
chezmoi apply
```

## 便利なコマンド

```bash
# 現在の管理状況を確認
chezmoi status

# 管理中のファイル一覧
chezmoi managed

# 特定ファイルの詳細情報
chezmoi data

# 設定ファイルの場所を表示
chezmoi source-path ~/.zshrc
```

## トラブル時の対処

```bash
# 強制的に設定を適用
chezmoi apply --force

# 特定ファイルのみ適用
chezmoi apply ~/.zshrc

# ファイルを管理対象から除外
chezmoi forget ~/.zshrc
```

## 参考リンク

- [chezmoi公式ドキュメント](https://www.chezmoi.io/)
- [chezmoi GitHub](https://github.com/twpayne/chezmoi)
