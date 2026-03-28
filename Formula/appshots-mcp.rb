class AppshotsMcp < Formula
  desc "MCP server for generating ASO-optimized App Store screenshots"
  homepage "https://github.com/Murzav/appshots-mcp"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Murzav/appshots-mcp/releases/download/v#{version}/appshots-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "ac2bad1b42109666464978c4f43679999238ce5dbf4917892c9e42c710351a37"
    else
      url "https://github.com/Murzav/appshots-mcp/releases/download/v#{version}/appshots-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "a3f3ebf0d853e2a60238ef964e6122fe2a6780e13c7ba85fd79f1ab26177fa82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Murzav/appshots-mcp/releases/download/v#{version}/appshots-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28f90a1f4b9740a667f195dd9ce1ac6c0aaf4c3f4c72b4122b07b9a79d522d32"
    else
      url "https://github.com/Murzav/appshots-mcp/releases/download/v#{version}/appshots-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1480f2184c22f0d1ce94433b83e8e5097f67f02aea47c78cce048e299ad1ae43"
    end
  end

  def install
    bin.install "appshots-mcp"
  end

  test do
    assert_match "appshots-mcp", shell_output("#{bin}/appshots-mcp --help 2>&1")
  end
end
