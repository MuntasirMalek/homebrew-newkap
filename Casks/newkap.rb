cask "newkap" do
  version "4.0.11"

  on_intel do
    sha256 "956153ef92fed81aa0cb383cb2c34a02bfa529f50467778e193dfeca4eb7d24b"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.11/NewKap-4.0.11-x64.dmg"
  end

  on_arm do
    sha256 "d64504dfa38f14885aa9895f1937397ff85822c14f02bbcb40f504858d8269e1"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.11/NewKap-4.0.11-arm64.dmg"
  end

  name "NewKap"
  desc "Community-driven screen recorder (Kap fork)"
  homepage "https://github.com/MuntasirMalek/NewKap"

  app "NewKap.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/NewKap.app"]
    system_command "/usr/bin/tccutil", args: ["reset", "ScreenCapture", "com.newkap.app"]
  end

  zap trash: [
    "~/Library/Application Support/NewKap",
    "~/Library/Application Support/Kap",
    "~/Library/Preferences/com.newkap.app.plist",
    "~/Library/Logs/NewKap",
    "~/Library/Logs/Kap",
  ]
end
