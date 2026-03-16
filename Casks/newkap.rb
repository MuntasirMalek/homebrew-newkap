cask "newkap" do
  version "4.0.10"

  on_intel do
    sha256 "9e3ccbe00fca2e1a289b0f50566e115b127afc7ee5d4e0b2cbe002635b77d14e"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.10/NewKap-4.0.10-x64.dmg"
  end

  on_arm do
    sha256 "851164f5fd51d06bab57fddd069f556a820e2be25b706824e775fc95d7522f62"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.10/NewKap-4.0.10-arm64.dmg"
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
