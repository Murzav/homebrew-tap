class XcstringsMcp < Formula
  desc "MCP server for iOS/macOS .xcstrings localization files"
  homepage "https://github.com/Murzav/xcstrings-mcp"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "457da6f1ca448d8e0ea37b0d340fbd88c0256783498c1caf62af6c2f0bf6618c"
    else
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "38ad6068242bb9e7c3c219ae58f2abacbf14e3ede90cae07e19e8df96d7b8820"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e04e013aeddbf15fcca5746309fa63cff3f0f72401ae7fc093f625476b61c3cf"
    else
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3f4afdb3a94a44b022ca474ab3c1c869b3f9367bef7deed8e6b6009dcaf134c9"
    end
  end

  def install
    bin.install "xcstrings-mcp"
  end

  test do
    assert_match "xcstrings-mcp", shell_output("#{bin}/xcstrings-mcp --help 2>&1")
  end
end
