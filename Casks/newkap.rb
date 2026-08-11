cask "newkap" do
  version "4.0.13"

  on_intel do
    sha256 "2c7b6e8ad5ab9974a06656b179125f21273edc9ce070dd18c8a44a05574ee71a"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.13/NewKap-4.0.13-x64.dmg"
  end

  on_arm do
    sha256 "f90d734861926677c17a2b5d3093412439422f156bf463ec8b62f0db504cb6dc"
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
