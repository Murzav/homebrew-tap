class XcstringsMcp < Formula
  desc "MCP server for iOS/macOS .xcstrings localization files"
  homepage "https://github.com/Murzav/xcstrings-mcp"
  version "1.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "ffb08e12e70250714617ba80b7c122b22ebe1dc2ddb036c33b4ab58e2c786c47"
    else
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "d3529d1c1e9cbe92d0d349484a4ccdeaa04ad415fed009019d649ffba9cf26cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2bb85c05007348dc28e59f135b6a42bf49ffe489deb929e0baba24c5e9c9abf9"
    else
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa8524b9a2d2a690463ab2800aad7cfcdd9b3f0f75885c7ff1903f5dfdaaef84"
    end
  end

  def install
    bin.install "xcstrings-mcp"
  end

  test do
    assert_match "xcstrings-mcp", shell_output("#{bin}/xcstrings-mcp --help 2>&1")
  end
end
