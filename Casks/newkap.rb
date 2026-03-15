cask "newkap" do
  version "4.0.5"

  on_intel do
    sha256 "36c9dd64676c09d6f26594797f4d33ba25dd7a9890290e25b694bd7ac9703700"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.5/NewKap-4.0.5-x64.dmg"
  end

  on_arm do
    sha256 "2c81686594933aefae642bae1d13df10410436997bf328783c23d332f6851a4c"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.5/NewKap-4.0.5-arm64.dmg"
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
