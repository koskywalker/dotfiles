# CLAUDE.md

## プロジェクト概要

chezmoi で管理する dotfiles リポジトリ。

## 構成

- `dot_*` → chezmoi が `~/.` にマッピング（例: `dot_zshrc` → `~/.zshrc`）
- `private_*` → chezmoi がパーミッション 0600 で配置
- `*.tmpl` → chezmoi テンプレートファイル（Go template 構文、`{{ .chezmoi.* }}` 等を使用）
- `dot_claude/` → `~/.claude/` に配置される Claude Code の設定

## 管理対象ファイル

- `.zshrc` (テンプレート) - シェル設定
- `.claude/CLAUDE.md` - Claude Code のグローバル設定
- `.claude/settings.json` - Claude Code の設定・hooks
- `Library/Application Support/Code/User/settings.json` - VS Code 設定

## chezmoi の命名規則

| プレフィックス | 意味 |
|---|---|
| `dot_` | ドットファイル（`.` に変換） |
| `private_` | パーミッション 0600 |
| `empty_` | 空ファイルも管理 |
| `exact_` | ディレクトリ内の不要ファイルを削除 |
| `.tmpl` サフィックス | テンプレートとして処理 |

## 開発ルール

- 新しいファイルを追加する場合は chezmoi の命名規則に従う
- テンプレートでは `{{ .chezmoi.homeDir }}` 等を使い、マシン間の差異を吸収する
- コミットメッセージは英語で書く
