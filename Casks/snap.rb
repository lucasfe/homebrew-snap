cask "snap" do
  version "0.1.1"
  sha256 "42f052b904882d83366e3aeead54194668979e5a6abce7cdfbb80c3ace8af5de"

  url "https://github.com/lucasfe/homebrew-snap/releases/download/v0.1.1/Snap-0.1.1.dmg"
  name "Snap"
  desc "Menu bar screenshot tool with annotation and issue filing"
  homepage "https://github.com/lucasfe/homebrew-snap"

  app "Snap.app"

  zap trash: [
        "~/Library/Application Support/com.lucasfe.Snap",
        "~/Library/Caches/com.lucasfe.Snap",
        "~/Library/HTTPStorages/com.lucasfe.Snap",
        "~/Library/Preferences/com.lucasfe.Snap.plist",
        "~/Library/Saved Application State/com.lucasfe.Snap.savedState",
      ],
      script: {
        executable: "/bin/sh",
        args: ["-c", "while /usr/bin/security delete-generic-password -s com.lucasfe.Snap.jira >/dev/null 2>&1; do :; done"],
      }
end
