cask "snap" do
  version "0.4.0"
  sha256 "2f703b67f117558a69fe9bc83e122cca278505171aaf9025ba4ebdb8a7f57325"

  url "https://github.com/lucasfe/homebrew-snap/releases/download/v0.4.0/Snap-0.4.0.dmg"
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
