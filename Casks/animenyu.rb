cask "animenyu" do
  version "1.3.1"
  sha256 "6f86127d89d4ea0ab33a3e903a5ed5e3a0a1dd8e41a7abf1a52389c2929d8347"

  url "https://github.com/lodev09/animenyu/releases/download/v#{version}/AniMenyu-#{version}.dmg"
  name "AniMenyu"
  desc "Menu bar app for tracking currently airing anime on AniList"
  homepage "https://github.com/lodev09/animenyu"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "AniMenyu.app"

  zap trash: [
    "~/Library/Caches/com.lodev09.animenyu",
    "~/Library/HTTPStorages/com.lodev09.animenyu",
    "~/Library/Preferences/com.lodev09.animenyu.plist",
  ]
end
