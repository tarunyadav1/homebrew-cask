cask "murmur" do
  arch intel: "-intel"

  version "1.0.31,32"
  sha256 arm:   "19411345d15094a3a9de40f2e4c68ffb47599e1beada554f21cbd34b5071f629",
         intel: "989fdcf4b5622f562973a0780bae252d531bca9914254912d51855928739c4bd"

  url "https://pub-cccd11dcbf564e9cb1ec321ac823bdf0.r2.dev/Murmur-#{version.csv.first}-build-#{version.csv.second}#{arch}.dmg",
      verified: "pub-cccd11dcbf564e9cb1ec321ac823bdf0.r2.dev/"
  name "Murmur"
  desc "Offline text-to-speech with voice cloning"
  homepage "https://www.murmurtts.com/"

  livecheck do
    url "https://murmur-updates.tarunyadav9761.workers.dev/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Murmur.app"

  zap trash: [
    "~/Library/Application Support/Murmur",
    "~/Library/Caches/com.murmur.app",
    "~/Library/HTTPStorages/com.murmur.app",
    "~/Library/Preferences/com.murmur.app.plist",
    "~/Library/WebKit/com.murmur.app",
  ]
end
