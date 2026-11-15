class MockServiceCli < Formula
  desc "Local Mock/Static/SPA server, HTTP request proxy, API overview page and File explorer"
  homepage "https://github.com/chandq/mock-service-cli"
  url "https://registry.npmjs.org/mock-service-cli/-/mock-service-cli-4.12.0.tgz"
  sha256 "968a4b4a7b2058ffd9f186ed11d3972a886fb3070e730828429504d51d779452"
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
