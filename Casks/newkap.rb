cask "newkap" do
  version "4.0.8"

  on_intel do
    sha256 "0f987aaac8b8966b5c0f9dcf54fa7f4448b512a249ee30db82b69630bbf2ab77"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.8/NewKap-4.0.8-x64.dmg"
  end

  on_arm do
    sha256 "c9d4f85d64a8bbf4f52a238626aadcf6a77339c0eae9d367b084757def016d2b"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.8/NewKap-4.0.8-arm64.dmg"
  end

  name "NewKap"
  desc "Community-driven screen recorder (Kap fork)"
  homepage "https://github.com/MuntasirMalek/NewKap"

  app "NewKap.app"

  zap trash: [
    "~/Library/Application Support/NewKap",
    "~/Library/Application Support/Kap",
    "~/Library/Preferences/com.newkap.app.plist",
    "~/Library/Logs/NewKap",
    "~/Library/Logs/Kap",
  ]
end
