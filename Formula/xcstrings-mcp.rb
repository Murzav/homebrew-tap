class XcstringsMcp < Formula
  desc "MCP server for iOS/macOS .xcstrings localization files"
  homepage "https://github.com/Murzav/xcstrings-mcp"
  version "1.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "849ccb03e22253f8d6699b1aa79eb2f0bea023e3d71ba43752c4f8fce5d657c0"
    else
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "9e325a102ed81dd858fe695213c16d3a596ee258e602955c8f720970ca332526"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "70ed4a8c1085dd14dc8c8ecade41c87c5f02a33a598a664b314927548ffedc9f"
    else
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "942aa4ec2a9a475bb302360cd0696dd22bd1a1918f70bdad8b697c350b784e1a"
    end
  end

  def install
    bin.install "xcstrings-mcp"
  end

  test do
    assert_match "xcstrings-mcp", shell_output("#{bin}/xcstrings-mcp --help 2>&1")
  end
end
