cask "arai" do
  version "0.19.0"
  sha256 "b5f5a73764a1a78eeec40b4dbd894b2251c0de14e8e5a050a6eeeaef3990cc3c"

  url "https://github.com/mattkoltun/arai/releases/download/v#{version}/Arai-#{version}-macos-universal.dmg"
  name "Arai"
  desc "Voice-first prompt and writing assistant"
  homepage "https://github.com/mattkoltun/arai"

  app "Arai.app"
end
