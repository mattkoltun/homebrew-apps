cask "arai" do
  version "0.19.2"
  sha256 "09ef161a94e027ba76f1a9a5ed58ae261484de05b8e22e9709425e39948c4a08"

  url "https://github.com/mattkoltun/arai/releases/download/v#{version}/Arai-#{version}-macos-universal.dmg"
  name "Arai"
  desc "Voice-first prompt and writing assistant"
  homepage "https://github.com/mattkoltun/arai"

  app "Arai.app"
end
