cask "notepadxtreme" do
  version "0.2.23"
  sha256 "0d4e20fc5d9daca5375021fa83ddcfeae435e13681e6154d8bbfdd7b42d952ae"

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
