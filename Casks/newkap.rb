cask "newkap" do
  version "4.0.7"

  on_intel do
    sha256 "ab4641ac97c40aceac4f8cceae19f6833f70f0c2c39320f1bd24065b55cb682d"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.7/NewKap-4.0.7-x64.dmg"
  end

  on_arm do
    sha256 "c8e718855ed8700f1e2665a6368d325f6802ddfc6dbab90249eaa708cb8eb48f"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.7/NewKap-4.0.7-arm64.dmg"
  end

  name "NewKap"
  desc "Community-driven screen recorder (Kap fork)"
  homepage "https://github.com/MuntasirMalek/NewKap"

  app "NewKap.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/NewKap.app"]
  end

  zap trash: [
    "~/Library/Application Support/Kap",
    "~/Library/Preferences/com.newkap.app.plist",
    "~/Library/Logs/Kap",
  ]
end
