cask "newkap" do
  version "4.0.4"

  on_intel do
    sha256 "e1ae142ad7db40dbe0c528c72012b37b6b25f5e7a1bc5ed01a5533981636587e"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.4/NewKap-4.0.4-x64.dmg"
  end

  on_arm do
    sha256 "4da341afcd0f2516e7d6461f4b3d592478f56d13905c6403521dedf98168c6ed"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.4/NewKap-4.0.4-arm64.dmg"
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
