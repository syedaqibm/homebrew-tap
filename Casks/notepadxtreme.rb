cask "notepadxtreme" do
  version "0.2.25"
  sha256 "7a057d682102f031fba8a93d5c093e5f4f9602afc4f4e860524965fb09124fc9"

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
