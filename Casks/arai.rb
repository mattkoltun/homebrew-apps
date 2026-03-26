cask "arai" do
  version "0.18.0"
  sha256 "sha256:b616ad80bbdc3abb4997689a717a1210cada4eb2ca716dcde2306587de7c8a3b"

  url "https://github.com/mattkoltun/arai/releases/download/v#{version}/Arai-#{version}-macos-universal.dmg"
  name "Arai"
  desc "Voice-first prompt and writing assistant"
  homepage "https://github.com/mattkoltun/arai"

  app "Arai.app"
end
