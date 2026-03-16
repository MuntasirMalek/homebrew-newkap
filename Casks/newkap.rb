cask "newkap" do
  version "4.0.6"

  on_intel do
    sha256 "7b2314eea63110db5ec0a1a8645312d9e1b18b4bbe8ad51c81ef5bab9a4ea477"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.6/NewKap-4.0.6-x64.dmg"
  end

  on_arm do
    sha256 "1ec33e467811f84afcdde4ccb1e6b70925ffed45d0605e79b5b524bbe71c3e25"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.6/NewKap-4.0.6-arm64.dmg"
  end

  name "NewKap"
  desc "Community-driven screen recorder (Kap fork)"
  homepage "https://github.com/MuntasirMalek/NewKap"

  app "NewKap.app"

  zap trash: [
    "~/Library/Application Support/NewKap",
    "~/Library/Application Support/Kap",
    "~/Library/Preferences/com.newkap.app.plist",
    "~/Library/Logs/NewKap",
    "~/Library/Logs/Kap",
  ]
end
