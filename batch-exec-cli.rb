class BatchExecCli < Formula
  desc "🦅 Efficiently iterate through directories and execute commands with progress display and parallel execution"
  homepage "https://github.com/chandq/batch-exec-cli"
  url "https://registry.npmjs.org/batch-exec-cli/-/batch-exec-cli-1.5.2.tgz"
  sha256 "6bb34943b7c8b2eb7858e976b80b8dc4c80f9a5ed0e3ee6658175ba29d521606"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/batch-exec --version")
  end
end
