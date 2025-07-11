class ShadowCloneJutsu < Formula
  desc "Git Worktree management tool with Claude Code integration"
  homepage "https://github.com/hashiramaendure/shadow-clone-jutsu"
  url "https://registry.npmjs.org/shadow-clone-jutsu/-/shadow-clone-jutsu-0.1.0.tgz"
  sha256 "3af9b0f36e28092d599e04c3fa3aacce3c8e21a814af6e3deb06db703c4e1193"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scj --version")
    assert_match "create", shell_output("#{bin}/scj --help")
  end
end