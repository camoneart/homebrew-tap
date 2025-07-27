class Maestro < Formula
  desc "Orchestrate parallel development with Git Worktrees - supercharge your workflow with Claude Code integration"
  homepage "https://github.com/camoneart/maestro"
  url "https://registry.npmjs.org/@camoneart/maestro/-/maestro-3.3.2.tgz"
  sha256 "db97132209689362d9dd07f8683eed2b307a1426b6ddc13b3c045c2e2f4498c0"
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