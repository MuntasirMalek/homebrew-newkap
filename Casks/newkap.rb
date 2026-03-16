cask "newkap" do
  version "4.0.9"

  on_intel do
    sha256 "ba27cad48f26a475a49119394ef33d58959a80d455ea54d4f275679d128213bb"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.9/NewKap-4.0.9-x64.dmg"
  end

  on_arm do
    sha256 "ce07ca0fec79818ef6af5e0958df0e5de4fec758cf6570d64180880de2b0c02d"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.9/NewKap-4.0.9-arm64.dmg"
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
