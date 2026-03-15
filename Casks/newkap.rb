cask "newkap" do
  version "4.0.2"

  on_intel do
    sha256 "d1aa364bdabe3dab3e75f83fc2e7df3cf156df091010ab30807e6590e99b057f"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.2/NewKap-4.0.2-x64.dmg"
  end

  on_arm do
    sha256 "d49f3a92b0dd1dbe8cbe0b37363a5897ef427744bd03ac00041ddd737a977699"
    url "https://github.com/MuntasirMalek/NewKap/releases/download/v4.0.2/NewKap-4.0.2-arm64.dmg"
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
