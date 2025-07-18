class Maestro < Formula
  desc "Orchestrate parallel development with Git Worktrees - supercharge your workflow with Claude Code integration"
  homepage "https://github.com/hashiramaendure/maestro"
  url "https://registry.npmjs.org/@hashiramaendure/maestro/-/maestro-2.0.0.tgz"
  sha256 "8ac60be44f9bbd4442da7703460bc69ad18eae9012257ed7488e22574c730df2"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/maestro --version")
    assert_match "create", shell_output("#{bin}/maestro --help")
  end
end