cask "ccgateway" do
  version "1.0.2"
  sha256 "1fda3ff39196e809b380b236256ba12e0fbc6d65aff8994bef7ec08e950982a1"

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
