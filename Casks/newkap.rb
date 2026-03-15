cask "newkap" do
  version "4.0.3"

  on_intel do
    sha256 "cf4ad1cbb8ac8bb72660b5c5bbe059ab9c1df6925b8b435a9a26f588500f846c"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.3/NewKap-4.0.3-x64.dmg"
  end

  on_arm do
    sha256 "ad9b3ec59dd8650fb7be265f110722de0a8c759892cd31a33b869ee9c6957908"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.3/NewKap-4.0.3-arm64.dmg"
  end

  name "NewKap"
  desc "Community-driven screen recorder (Kap fork)"
  homepage "https://github.com/MuntasirMalek/NewKap"

  app "NewKap.app"

  zap trash: [
    "~/Library/Application Support/Kap",
    "~/Library/Preferences/com.newkap.app.plist",
    "~/Library/Logs/Kap",
  ]
end
