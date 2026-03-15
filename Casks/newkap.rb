cask "newkap" do
  version "4.0.1"

  on_intel do
    sha256 "cc6bbd1b3d02b45c864be5299ff4b37edd87a5893279ad4bf814bfd1fd55bc88"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.1/NewKap-4.0.1-x64.dmg"
  end

  on_arm do
    sha256 "479ff086f17852c0f6866dc7a86f9e171d42254c38a4612883642ec5ffbebfc0"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.1/NewKap-4.0.1-arm64.dmg"
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
