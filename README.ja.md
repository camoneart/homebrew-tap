# camoneart Homebrew Tap

[![Homebrew](https://img.shields.io/badge/Homebrew-Tap-orange?style=flat-square)](https://brew.sh)
[![License MIT](https://img.shields.io/badge/License-MIT-blue?style=flat-square)](https://opensource.org/licenses/MIT)

camoneartが開発したツールのHomebrewフォーミュラを提供するtapです。

**[English](/README.md)** | **日本語**

## インストール方法

```bash
brew install camoneart/tap/maestro
```

または先にリポジトリをtap：

```bash
brew tap camoneart/tap
brew install camoneart/tap/maestro
```

またはURL経由でインストール（更新を受け取れません）：

```bash
brew install https://raw.githubusercontent.com/camoneart/homebrew-tap/main/Formula/maestro.rb
```

## 利用可能なFormulae

### 🎼 Maestro

Git Worktreeをオーケストラのように「指揮」し、Claude Codeとの並行開発を加速するCLIツール。

- **Git Worktreeの管理**: 複数のブランチを独立した「演奏者」として管理
- **Claude Code連携**: MCPによるAI差分レビューとコード提案
- **GitHub連携**: Issue/PRから直接worktreeを作成
- **tmux/fzfサポート**: 高速なworktree切り替え

詳細は[Maestroリポジトリ](https://github.com/camoneart/maestro)をご覧ください。

```bash
brew install camoneart/tap/maestro
```

## トラブルシューティング

インストールで問題が発生した場合：

1. **Homebrewを更新**: `brew update`
2. **競合をチェック**: `brew doctor`
3. **強制的に再リンク**: `brew link --overwrite maestro`

フォーミュラ固有の問題については、このリポジトリでIssueを作成してください。

## ドキュメント

- Formulaドキュメント: `brew help`, `man brew`
- Homebrewドキュメント: [docs.brew.sh](https://docs.brew.sh)
- Maestroドキュメント: [github.com/camoneart/maestro](https://github.com/camoneart/maestro)