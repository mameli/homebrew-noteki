cask "noteki" do
  version "0.2.3"
  sha256 "6017e5e905ee026a30626c49918d03d100581b0d9f18b6d2d5462d1f70dcf04f"

  url "https://github.com/mameli/Noteki/releases/download/v#{version}/Noteki-#{version}.dmg"
  name "Noteki"
  desc "Light native editor for an Obsidian Markdown vault"
  homepage "https://github.com/mameli/Noteki"

  livecheck do
    url :url
    strategy :github_latest
  end

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
