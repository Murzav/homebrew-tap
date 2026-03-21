class XcstringsMcp < Formula
  desc "MCP server for iOS/macOS .xcstrings localization files"
  homepage "https://github.com/Murzav/xcstrings-mcp"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "787fe9b95f457271b8afe4aaf97039f8b5b5d069b296f1a5e935c213e8c1a639"
    else
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "af48ccb3a49ad15dabd4c43b03b1edd7eadb592d0abeacfc41ff126bbfcad4bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c9db44c4230856f4f497e98a20d0a44d6b1ec2d8029b44807e8f5c250dc3e562"
    else
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "04f1649ef26903473a084ef1b979ee884afdaaefc7d39a9a92ce910fa7021f9f"
    end
  end

  def install
    bin.install "xcstrings-mcp"
  end

  test do
    assert_match "xcstrings-mcp", shell_output("#{bin}/xcstrings-mcp --help 2>&1")
  end
end
