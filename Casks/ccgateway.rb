cask "ccgateway" do
  version "1.0.0"
  sha256 "f99e8760365b28799b1ac28d17da24b4370a6770d1146394bdc40df8ddbde794"

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
