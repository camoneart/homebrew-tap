# maestro fish completion

# コマンドの補完を無効化
complete -c maestro -e
complete -c maestro -e

# メインコマンド
complete -c maestro -n "__fish_use_subcommand" -a "create" -d "新しい演奏者（worktree）を招集する"
complete -c maestro -n "__fish_use_subcommand" -a "list ls" -d "オーケストラ編成（worktree）の一覧を表示"
complete -c maestro -n "__fish_use_subcommand" -a "delete rm" -d "演奏者（worktree）を解散"
complete -c maestro -n "__fish_use_subcommand" -a "shell sh" -d "演奏者のシェルに入る"
complete -c maestro -n "__fish_use_subcommand" -a "exec e" -d "演奏者でコマンドを実行"
complete -c maestro -n "__fish_use_subcommand" -a "attach a" -d "既存のブランチから演奏者を招集する"
complete -c maestro -n "__fish_use_subcommand" -a "github gh" -d "GitHub PR/Issueから演奏者を招集する"
complete -c maestro -n "__fish_use_subcommand" -a "config" -d "設定を管理"
complete -c maestro -n "__fish_use_subcommand" -a "mcp" -d "MCPサーバーを起動"
complete -c maestro -n "__fish_use_subcommand" -a "completion" -d "シェル補完スクリプトを生成"
complete -c maestro -n "__fish_use_subcommand" -a "tmux t" -d "tmux/fzfで演奏者を選択して開く"
complete -c maestro -n "__fish_use_subcommand" -a "where w" -d "演奏者のパスを表示"

# create コマンドのオプション
complete -c maestro -n "__fish_seen_subcommand_from create" -s b -l base -d "ベースブランチ"
complete -c maestro -n "__fish_seen_subcommand_from create" -s o -l open -d "VSCode/Cursorで開く"
complete -c maestro -n "__fish_seen_subcommand_from create" -s s -l setup -d "環境セットアップを実行"

# list コマンドのオプション
complete -c maestro -n "__fish_seen_subcommand_from list ls" -s j -l json -d "JSON形式で出力"
complete -c maestro -n "__fish_seen_subcommand_from list ls" -l fzf -d "fzfで選択"
complete -c maestro -n "__fish_seen_subcommand_from list ls" -l filter -d "フィルタ"
complete -c maestro -n "__fish_seen_subcommand_from list ls" -l sort -d "ソート"
complete -c maestro -n "__fish_seen_subcommand_from list ls" -l last-commit -d "最終コミット情報を表示"

# delete コマンドのオプション
complete -c maestro -n "__fish_seen_subcommand_from delete rm" -s f -l force -d "強制削除"
complete -c maestro -n "__fish_seen_subcommand_from delete rm" -s r -l remove-remote -d "リモートブランチも削除"

# exec コマンドのオプション
complete -c maestro -n "__fish_seen_subcommand_from exec e" -s s -l silent -d "出力を抑制"
complete -c maestro -n "__fish_seen_subcommand_from exec e" -s a -l all -d "すべての演奏者で実行"

# github コマンドのオプション
complete -c maestro -n "__fish_seen_subcommand_from github gh" -s o -l open -d "VSCode/Cursorで開く"
complete -c maestro -n "__fish_seen_subcommand_from github gh" -s s -l setup -d "環境セットアップを実行"

# config コマンドのオプション
complete -c maestro -n "__fish_seen_subcommand_from config" -s g -l global -d "グローバル設定を対象にする"

# tmux コマンドのオプション
complete -c maestro -n "__fish_seen_subcommand_from tmux t" -s n -l new-window -d "新しいウィンドウで開く"
complete -c maestro -n "__fish_seen_subcommand_from tmux t" -s p -l split-pane -d "現在のペインを分割して開く"
complete -c maestro -n "__fish_seen_subcommand_from tmux t" -s v -l vertical -d "垂直分割"

# where コマンドのオプション
complete -c maestro -n "__fish_seen_subcommand_from where w" -l fzf -d "fzfで選択"
complete -c maestro -n "__fish_seen_subcommand_from where w" -l current -d "現在のworktreeのパスを表示"

# サブコマンドの引数補完
complete -c maestro -n "__fish_seen_subcommand_from config; and __fish_is_nth_token 3" -a "init show path"
complete -c maestro -n "__fish_seen_subcommand_from mcp; and __fish_is_nth_token 3" -a "serve"
complete -c maestro -n "__fish_seen_subcommand_from completion; and __fish_is_nth_token 3" -a "bash zsh fish"
complete -c maestro -n "__fish_seen_subcommand_from github gh; and __fish_is_nth_token 3" -a "checkout pr issue"

# worktreeブランチ名の補完（動的）
complete -c maestro -n "__fish_seen_subcommand_from shell sh exec e delete rm where w" -a "(git worktree list --porcelain 2>/dev/null | grep '^branch' | sed 's/^branch refs\/heads\///')"