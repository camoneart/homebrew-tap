class Maestro < Formula
  desc "Orchestrate parallel development with Git Worktrees - supercharge your workflow with Claude Code integration"
  homepage "https://github.com/hashiramaendure/maestro"
  url "https://registry.npmjs.org/@hashiramaendure/maestro/-/maestro-2.0.1.tgz"
  sha256 "19e0d78861f8e14848754d3f91b13a90d7f3874b4a87e7459783782cc3946d04"
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