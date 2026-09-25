cask "snap" do
  version "0.4.1"
  sha256 "8d9a1e391fb0e2af3383252b9d575df9f323dbf076236dd313f83a91983a9315"

  url "https://github.com/lucasfe/homebrew-snap/releases/download/v0.4.1/Snap-0.4.1.dmg"
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
