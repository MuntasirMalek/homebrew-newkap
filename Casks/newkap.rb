cask "newkap" do
  version "4.0.0"

  on_intel do
    sha256 "ac380008b7038896008835ff233fa4b5e44b20415d5314f5bac6000cf2cae811"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v#{version}/Kap-3.6.0-x64.dmg"
  end

  on_arm do
    sha256 "61481ceeb7698652bc037f810f92a15f082b3092789aec236d18597a16323230"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v#{version}/Kap-3.6.0-arm64.dmg"
  end

  name "NewKap"
  desc "Community-driven screen recorder (Kap fork)"
  homepage "https://github.com/MuntasirMalek/NewKap"

  app "Kap.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Kap.app"]
  end

  zap trash: [
    "~/Library/Application Support/Kap",
    "~/Library/Preferences/com.wulkano.kap.plist",
    "~/Library/Logs/Kap",
  ]
end
