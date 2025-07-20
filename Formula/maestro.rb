class Maestro < Formula
  desc "Orchestrate parallel development with Git Worktrees - supercharge your workflow with Claude Code integration"
  homepage "https://github.com/hashiramaendure/maestro"
  url "https://registry.npmjs.org/@hashiramaendure/maestro/-/maestro-2.0.2.tgz"
  sha256 "019de1877ef9718d1c865f4018be7dde67978576febc74e07c66f5377a3e5371"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
    
    # Install shell completions
    bash_completion.install "completion/bash/mst"
    zsh_completion.install "completion/zsh/_mst"
    fish_completion.install "completion/fish/mst.fish"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/maestro --version")
    assert_match "create", shell_output("#{bin}/maestro --help")
  end
end