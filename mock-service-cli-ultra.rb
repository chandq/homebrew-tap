class MockServiceCliUltra < Formula
  desc "Local Mock/Static/SPA server, HTTP request proxy, API overview page and File explorer (Ultra archive formats)"
  homepage "https://github.com/chandq/mock-service-cli"
  url "https://registry.npmjs.org/mock-service-cli-ultra/-/mock-service-cli-ultra-4.13.0.tgz"
  sha256 "41120b03e0e34a35704eb37f74eb0c45a4e82c93a78e8ed76ea16c1041787e9d"
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
