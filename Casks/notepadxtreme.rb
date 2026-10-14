cask "notepadxtreme" do
  version "0.2.31"
  sha256 "ed5246cdc99bb9369e4ab9e09615e3bf9e08683f35032724c01cdf4bc98a146f"

  url "https://github.com/syedaqibm/DownloadNotepadX/releases/download/v#{version}/NotepadXtreme_#{version}_universal.dmg"
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
