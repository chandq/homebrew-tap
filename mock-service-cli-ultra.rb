class MockServiceCliUltra < Formula
  desc "Local Mock/Static/SPA server, HTTP request proxy, API overview page and File explorer (Ultra archive formats)"
  homepage "https://github.com/chandq/mock-service-cli"
  url "https://registry.npmjs.org/mock-service-cli-ultra/-/mock-service-cli-ultra-4.10.0.tgz"
  sha256 "4cb0221694ceff955fb616aeb1dcc6cb3c029e698341b3bfbc522153ee1609eb"
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
