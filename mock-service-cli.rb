class MockServiceCli < Formula
  desc "Local Mock/Static/SPA server, HTTP request proxy, API overview page and File explorer"
  homepage "https://github.com/chandq/mock-service-cli"
  url "https://registry.npmjs.org/mock-service-cli/-/mock-service-cli-4.9.2.tgz"
  sha256 "1da5ebb1b45f7b5234016f4bd7fe53cf935b7c78ba9bb937dd6eb164a868e3c1"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/mock-service-cli --version")
  end
end
