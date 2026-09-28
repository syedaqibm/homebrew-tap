# NotepadXtreme Homebrew tap

    brew install --cask syedaqibm/tap/notepadxtreme

On Homebrew 6 and later, installing by this full name trusts just this cask, so
no extra step is needed. If you tapped first and want the short name, trust the
cask once:

    brew trust --cask syedaqibm/tap/notepadxtreme
    brew install --cask notepadxtreme

Installs [NotepadXtreme](https://notepadx.app), a text editor for macOS, Windows
and Linux that keeps your unsaved tabs, holds a local version history of every
file, and puts a drawing canvas next to your text.

The macOS build is signed with a Developer ID certificate and notarised by
Apple, so it installs without a Gatekeeper warning.

Casks here point at the release binaries in
[DownloadNotepadX](https://github.com/syedaqibm/DownloadNotepadX/releases).
