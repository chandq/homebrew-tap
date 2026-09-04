class MockServiceCliUltra < Formula
  desc "Local Mock/Static/SPA server, HTTP request proxy, API overview page and File explorer (Ultra archive formats)"
  homepage "https://github.com/chandq/mock-service-cli"
  url "https://registry.npmjs.org/mock-service-cli-ultra/-/mock-service-cli-ultra-4.9.0.tgz"
  sha256 "bfb46ca0ade0901af9f3f2e55e27201da40046308e18513831e011cbf1ef045e"
  license "MIT"

  depends_on "node"

  conflicts_with "mock-service-cli"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/mock-service-cli --version")
  end
end
