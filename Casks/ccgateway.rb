cask "ccgateway" do
  version "1.0.1"
  sha256 "72d8c3fc588fec5ae58c55688926c0a189e4490f68716d29a4936a9ca8c59874"

  url "https://github.com/skainguyen1412/claude-code-gateway/releases/download/v#{version}/CCGateWay.zip"
  name "CCGateWay"
  desc "Use Claude Code with any LLM — one click from your Mac menu bar"
  homepage "https://github.com/skainguyen1412/claude-code-gateway"

  depends_on macos: ">= :sonoma"

  postflight do
    system "xattr", "-d", "com.apple.quarantine", "#{appdir}/CCGateWay.app"
  end

  app "CCGateWay.app"

  zap trash: [
    "~/Library/Application Support/CCGateWay",
    "~/.ccgateway",
  ]
end
