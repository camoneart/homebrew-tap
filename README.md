# camoneart Homebrew Tap

[![Homebrew](https://img.shields.io/badge/Homebrew-Tap-orange?style=flat-square)](https://brew.sh)
[![License MIT](https://img.shields.io/badge/License-MIT-blue?style=flat-square)](https://opensource.org/licenses/MIT)

This tap provides Homebrew formulae for tools developed by camoneart.

**English** | **[日本語](/README.ja.md)**

## How do I install these formulae?

```bash
brew install camoneart/tap/maestro
```

Or tap the repository first:

```bash
brew tap camoneart/tap
brew install camoneart/tap/maestro
```

Or install via URL (which will not receive updates):

```bash
brew install https://raw.githubusercontent.com/camoneart/homebrew-tap/main/Formula/maestro.rb
```

## Available Formulae

### 🎼 Maestro

A CLI tool that "conducts" Git Worktrees like an orchestra and turbo-charges parallel development with Claude Code.

- **Orchestrate Git Worktrees**: Manage multiple branches as independent "orchestra members"
- **Claude Code Integration**: AI-powered diff reviews and code suggestions via MCP
- **GitHub Integration**: Create worktrees directly from Issues/PRs
- **tmux/fzf Support**: Lightning-fast switching between worktrees

For more details, see the [Maestro repository](https://github.com/camoneart/maestro).

```bash
brew install camoneart/tap/maestro
```

## Troubleshooting

If you encounter installation issues:

1. **Update Homebrew**: `brew update`
2. **Check for conflicts**: `brew doctor`
3. **Force relink**: `brew link --overwrite maestro`

For formula-specific issues, please open an issue in this repository.

## Documentation

- Formula documentation: `brew help`, `man brew`
- Homebrew documentation: [docs.brew.sh](https://docs.brew.sh)
- Maestro documentation: [github.com/camoneart/maestro](https://github.com/camoneart/maestro)