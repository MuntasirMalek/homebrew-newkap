cask "newkap" do
  version "4.0.12"

  on_intel do
    sha256 "3a29edb6556be9eeea996cdf35b72ffe499a7d98905b078710d9d2913fbfc162"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.12/NewKap-4.0.12-x64.dmg"
  end

  on_arm do
    sha256 "caaee8b2f2bf5ea0df82df613638680f3dfabdc547a4c2d152e064b9583ffd7c"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.12/NewKap-4.0.12-arm64.dmg"
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
