class AppshotsMcp < Formula
  desc "MCP server for generating ASO-optimized App Store screenshots"
  homepage "https://github.com/Murzav/appshots-mcp"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Murzav/appshots-mcp/releases/download/v#{version}/appshots-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "24605eb91da2d2008f02114f99a5f9504c17c2356abfe5dab9f85b08c9925b5a"
    else
      url "https://github.com/Murzav/appshots-mcp/releases/download/v#{version}/appshots-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "3b7ef21d1182d46c4dc55c0adab8c5ddefe3caa4a1458ee55f7ab7651e86966c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Murzav/appshots-mcp/releases/download/v#{version}/appshots-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b47be2f3545ce9ec24126d46dfb4671cc95d09a389a4e56dd4402ad24fdc5006"
    else
      url "https://github.com/Murzav/appshots-mcp/releases/download/v#{version}/appshots-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6158de9687b9e2fd1a75d72e34ef0eca585160fed003a703d302495dc1fac0a4"
    end
  end

  def install
    bin.install "appshots-mcp"
  end

  test do
    assert_match "appshots-mcp", shell_output("#{bin}/appshots-mcp --help 2>&1")
  end
end
