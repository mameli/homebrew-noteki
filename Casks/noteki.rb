cask "noteki" do
  version "0.4.3"
  sha256 "aa552dc3fd39951ba8e9c70f1e955259e8045010307b5cefb71d0b65a0412a95"

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
