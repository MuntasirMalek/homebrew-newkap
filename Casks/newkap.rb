cask "newkap" do
  arch arm: "arm64", intel: "x64"

  version "4.0.14"
  sha256 arm:   "193f57c3b776322946ff27ff64a3688d97dcfce6e66ad9f2301bdef32acaa3f8",
         intel: "b2cd9887a3b9fee9ae175f03d1052e80560b588cb750a973e5398d3c992742d6"

  url "https://github.com/MuntasirMalek/NewKap/releases/download/v#{version}/NewKap-#{version}-#{arch}.dmg"
  name "NewKap"
  desc "Community-driven screen recorder (Kap fork)"
  homepage "https://github.com/MuntasirMalek/NewKap"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "NewKap.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/NewKap.app"]
  end

  zap trash: [
    "~/Library/Application Support/NewKap",
    "~/Library/Caches/com.newkap.app",
    "~/Library/Caches/com.newkap.app.ShipIt",
    "~/Library/Logs/NewKap",
    "~/Library/Preferences/com.newkap.app.plist",
    "~/Library/Saved Application State/com.newkap.app.savedState",
  ]
end
