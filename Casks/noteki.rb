cask "noteki" do
  version "0.4.5"
  sha256 "073b4f30d80d9e92e5eab3a5a32142fad6be5cb7133c3b175d80f41ea8678929"

  url "https://github.com/mameli/Noteki/releases/download/v#{version}/Noteki-#{version}.dmg"
  name "Noteki"
  desc "Light native editor for an Obsidian Markdown vault"
  homepage "https://github.com/mameli/Noteki"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Noteki.app"

  uninstall quit: "app.noteki.noteki"

  zap trash: [
    "~/Library/Caches/app.noteki.noteki",
    "~/Library/HTTPStorages/app.noteki.noteki",
    "~/Library/HTTPStorages/app.noteki.noteki.binarycookies",
    "~/Library/Preferences/app.noteki.noteki.plist",
    "~/Library/Saved Application State/app.noteki.noteki.savedState",
    "~/Library/WebKit/app.noteki.noteki",
  ]
end
