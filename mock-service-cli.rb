class MockServiceCli < Formula
  desc "Local Mock/Static/SPA server, HTTP request proxy, API overview page and File explorer"
  homepage "https://github.com/chandq/mock-service-cli"
  url "https://registry.npmjs.org/mock-service-cli/-/mock-service-cli-4.11.1.tgz"
  sha256 "5d73ed2e47f1e1815b1bcb3a8bb08f9fca927f286ae4e9eb6d0f2003b821caf4"
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
