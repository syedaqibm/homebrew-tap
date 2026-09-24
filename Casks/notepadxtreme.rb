cask "notepadxtreme" do
  version "0.2.22"
  sha256 "0a53bb3e4069f9591b33d8ca12d830b78bdfcf9258b7eb7313801400ded94c13"

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
