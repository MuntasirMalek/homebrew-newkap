cask "newkap" do
  arch arm: "arm64", intel: "x64"

  version "4.0.13"
  sha256 arm:   "f90d734861926677c17a2b5d3093412439422f156bf463ec8b62f0db504cb6dc",
         intel: "2c7b6e8ad5ab9974a06656b179125f21273edc9ce070dd18c8a44a05574ee71a"

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
