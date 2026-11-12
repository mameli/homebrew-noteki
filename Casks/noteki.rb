cask "noteki" do
  version "0.3.0"
  sha256 "cdc4d3deffc4296c02c33e36cb2c40ea7c1af42434f4fc070ac04cbe8591615c"

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
