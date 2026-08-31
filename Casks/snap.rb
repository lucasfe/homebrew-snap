cask "snap" do
  version "0.2.0"
  sha256 "fb908cc790790f3f2bb630c8c0411356f3cfce391390c5ed272ec941b51676a0"

  url "https://github.com/lucasfe/homebrew-snap/releases/download/v0.2.0/Snap-0.2.0.dmg"
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
