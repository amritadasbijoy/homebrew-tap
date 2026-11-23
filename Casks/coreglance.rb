cask "coreglance" do
  version "1.0.3"
  sha256 "11e88b2d03af7615e498cd01a555a614849e7194733ed6a7221be3446cc0f8b9"

  url "https://github.com/amritadasbijoy/CoreGlance/releases/download/v#{version}/CoreGlance-#{version}.zip"
  name "CoreGlance"
  desc "Lightweight menu bar system monitor"
  homepage "https://github.com/amritadasbijoy/CoreGlance"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "CoreGlance.app"

  zap trash: "~/Library/Preferences/io.github.amritadasbijoy.coreglance.plist"

  caveats <<~EOS
    CoreGlance is not notarized by Apple, so macOS blocks it the first time.
    Open System Settings > Privacy & Security and click "Open Anyway".
  EOS
end
