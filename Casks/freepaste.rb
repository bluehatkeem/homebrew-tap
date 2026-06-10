cask "freepaste" do
  version "1.1"
  sha256 "53a4574f4547789059e60ad11958b8df6ad418245a8f261f2ee5a23d531cf14b"

  url "https://github.com/bluehatkeem/freepaste/releases/download/v#{version}/Freepaste-#{version}.zip"
  name "Freepaste"
  desc "Menu-bar clipboard manager"
  homepage "https://github.com/bluehatkeem/freepaste"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Freepaste.app"

  zap trash: [
    "~/Library/Application Support/Freepaste",
    "~/Library/Preferences/com.keem.freepaste.plist",
  ]
end
