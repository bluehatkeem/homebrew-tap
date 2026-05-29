cask "freepaste" do
  version "1.0"
  sha256 "54f43bfef675440b1ba662dde5fb03778786f9ce832c22f1e011a0a88742ea8c"

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
