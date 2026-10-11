class MockServiceCliUltra < Formula
  desc "Local Mock/Static/SPA server, HTTP request proxy, API overview page and File explorer (Ultra archive formats)"
  homepage "https://github.com/chandq/mock-service-cli"
  url "https://registry.npmjs.org/mock-service-cli-ultra/-/mock-service-cli-ultra-4.11.0.tgz"
  sha256 "cb659fa2cc8565e6868bfbac92f940b605e33b44ee526622480453fe938398b6"
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
