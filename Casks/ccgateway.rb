cask "ccgateway" do
  version "1.1.0"
  sha256 "a35559ea5fb1ac2a1066a5b90d613d842c6648a467bca823c40d97c5350c549c"

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
