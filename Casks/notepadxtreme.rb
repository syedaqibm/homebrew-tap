cask "notepadxtreme" do
  version "0.2.21"
  sha256 "59453d30fc69697ef0b9f15e18c32adad3ab008d7d613da43e9525f5a616751e"

  url "https://github.com/syedaqibm/DownloadNotepadX/releases/download/v#{version}/NotepadXtreme_#{version}_universal.dmg",
      verified: "github.com/syedaqibm/DownloadNotepadX/"
  name "NotepadXtreme"
  desc "Text editor that keeps unsaved tabs, local version history and a drawing canvas"
  homepage "https://notepadx.app/"

  depends_on macos: :monterey

  app "NotepadXtreme.app"

  zap trash: [
    "~/Library/Application Support/com.notepadx.cross",
    "~/Library/Caches/com.notepadx.cross",
    "~/Library/Preferences/com.notepadx.cross.plist",
    "~/Library/Saved Application State/com.notepadx.cross.savedState",
  ]
end
