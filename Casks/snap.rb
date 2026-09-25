cask "snap" do
  version "0.4.2"
  sha256 "e45dabd072456004e2d21c1201b3a8f0c877b045b2fd6820a4b916ae2977633f"

  url "https://github.com/lucasfe/homebrew-snap/releases/download/v0.4.2/Snap-0.4.2.dmg"
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
