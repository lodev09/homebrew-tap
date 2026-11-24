cask "animenyu" do
  version "1.3.0"
  sha256 "72d96934ff80cdedcaf716439d7eee80eef3a7fff48a8f332548f1117059a2a3"

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
