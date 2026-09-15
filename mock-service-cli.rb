class MockServiceCli < Formula
  desc "Local Mock/Static/SPA server, HTTP request proxy, API overview page and File explorer"
  homepage "https://github.com/chandq/mock-service-cli"
  url "https://registry.npmjs.org/mock-service-cli/-/mock-service-cli-4.10.0.tgz"
  sha256 "eef5a6da81ca5242fc21bc9712bd20be47b9c5443d9cd1b35b6fd4eed1c2c90c"
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
