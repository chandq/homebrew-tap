class MockServiceCli < Formula
  desc "Local Mock/Static/SPA server, HTTP request proxy, API overview page and File explorer"
  homepage "https://github.com/chandq/mock-service-cli"
  url "https://registry.npmjs.org/mock-service-cli/-/mock-service-cli-4.9.3.tgz"
  sha256 "a274f20a222d2f2b3450446a20ff9d110ec32ef95371b585b437e7119b7632d7"
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
