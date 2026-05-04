cask "arai" do
  version "0.19.1"
  sha256 "b2643b65df2dfb50f3b7f268857099f828d658eba8e2bc7c8e5dd4a018473e5f"

  url "https://github.com/mattkoltun/arai/releases/download/v#{version}/Arai-#{version}-macos-universal.dmg"
  name "Arai"
  desc "Voice-first prompt and writing assistant"
  homepage "https://github.com/mattkoltun/arai"

  app "Arai.app"
end
