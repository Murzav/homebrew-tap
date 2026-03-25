class XcstringsMcp < Formula
  desc "MCP server for iOS/macOS .xcstrings localization files"
  homepage "https://github.com/Murzav/xcstrings-mcp"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "de1080ecb8c6bc05f3577ed89ae88373b479aa109f8d6c15130420607d89019c"
    else
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "a8719c718ce01f79ab9a0a64b7fed73ca0307d8ea0853c5602ffb8a2bd3d18ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3e918812446cd6386154fbf3d1970c63d4b7a9747c9107e98696a6641018d93e"
    else
      url "https://github.com/Murzav/xcstrings-mcp/releases/download/v#{version}/xcstrings-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb4362f056d725940c32b9919d85ec1a42835cb69e55f2d5be39dee60ff12e21"
    end
  end

  def install
    bin.install "xcstrings-mcp"
  end

  test do
    assert_match "xcstrings-mcp", shell_output("#{bin}/xcstrings-mcp --help 2>&1")
  end
end
