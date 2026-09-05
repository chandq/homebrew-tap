class BatchExecCli < Formula
  desc "Efficiently iterate through directories and execute commands with progress display and parallel execution"
  homepage "https://github.com/chandq/batch-exec-cli"
  url "https://registry.npmjs.org/batch-exec-cli/-/batch-exec-cli-1.5.1.tgz"
  sha256 "cd889014dae9b954ea93fe8eca69419e32300e5d80a86c716ff15fac0c0b3ade"
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
