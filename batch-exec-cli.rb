class BatchExecCli < Formula
  desc "🦅 Efficiently iterate through directories and execute commands with progress display and parallel execution"
  homepage "https://github.com/chandq/batch-exec-cli"
  url "https://registry.npmjs.org/batch-exec-cli/-/batch-exec-cli-1.5.3.tgz"
  sha256 "4319b6f0ccbbb58671dca85b6daa739996a580b18c7b1e20b5872f05b188295a"
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
