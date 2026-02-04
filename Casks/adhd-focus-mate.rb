cask "adhd-focus-mate" do
  version "1.0.0"
  sha256 "dd83efff9167bcee67eba5f70316bce74e3a71788815e2c190b708ef770c7858"

  url "https://github.com/skainguyen1412/adhd-focus-mate/releases/download/v#{version}/ADHD-Focus-Mate.zip"
  name "ADHD Focus Mate"
  desc "The ADHD timer that sees your distractions before you get lost in them"
  homepage "https://github.com/skainguyen1412/adhd-focus-mate"

  depends_on macos: ">= :sonoma"

  postflight do
    system "xattr -d com.apple.quarantine #{appdir}/ADHD\\ Focus\\ Mate.app"
  end

  app "ADHD Focus Mate.app"

  zap trash: [
    "~/Library/Application Support/ADHDFocusMate",
    "~/Library/Preferences/com.adhdfocusmate.app.plist",
  ]
end
