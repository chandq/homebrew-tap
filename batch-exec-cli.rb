class BatchExecCli < Formula
  desc "Efficiently iterate through directories and execute commands with progress display and parallel execution"
  homepage "https://github.com/chandq/batch-exec-cli"
  url "https://registry.npmjs.org/batch-exec-cli/-/batch-exec-cli-1.5.0.tgz"
  sha256 "6b6340fadd5c3a0ab31ef3827515c7c3971e125e802f5a3decd68c6cff21fdf9"
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
