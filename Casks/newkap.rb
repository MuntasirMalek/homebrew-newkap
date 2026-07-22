cask "newkap" do
  version "4.0.13"

  on_intel do
    sha256 "9f3bae3bacbb3e06d2a2ea60a8b22211ec1ec6c78978cc7336dc267e01735e69"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.13/NewKap-4.0.13-x64.dmg"
  end

  on_arm do
    sha256 "3db2e0becb2289d77580f87799cbec2f336ca2ef9e3bba7b1a12e6bd2f599d83"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.13/NewKap-4.0.13-arm64.dmg"
  end

  name "NewKap"
  desc "Community-driven screen recorder (Kap fork)"
  homepage "https://github.com/MuntasirMalek/NewKap"

  app "NewKap.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/NewKap.app"]
  end

  zap trash: [
    "~/Library/Application Support/NewKap",
    "~/Library/Application Support/Kap",
    "~/Library/Preferences/com.newkap.app.plist",
    "~/Library/Logs/NewKap",
    "~/Library/Logs/Kap",
  ]
end
