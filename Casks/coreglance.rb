cask "coreglance" do
  version "1.0.7"
  sha256 "e4bbe9a78de6d8a8c1290abc3604e6e6e3c4d0c2bf7a089d86dcd7a7836bf81f"

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
