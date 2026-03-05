cask "ccgateway" do
  version "1.1.1"
  sha256 "dc872c7d6ac20c36c171b30a55ff969aa6cda30d6165b394b3e6ae0436532452"

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
