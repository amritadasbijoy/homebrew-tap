cask "coreglance" do
  version "1.0.2"
  sha256 "8a6f748b0e1e82788efed765592bda269b80fd053bdb8b20c650fd919a9c0660"

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
