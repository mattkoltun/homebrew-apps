cask "retro-timer" do
  version "1.0.0"
  name "Retro Timer"
  desc "Retro digital timer and stopwatch"
  homepage "https://github.com/mattkoltun/retro-timer"

  on_arm do
    url "https://github.com/mattkoltun/retro-timer/releases/download/v#{version}/RetroTimer-#{version}-arm64.dmg"
    sha256 "e59cc0eaff567a63d9dc4633d7e31c2ee0a0e5180f535c5e89305d6005dd073b"
  end

  on_intel do
    url "https://github.com/mattkoltun/retro-timer/releases/download/v#{version}/RetroTimer-#{version}.dmg"
    sha256 "b58c38dc61c0e6fcb19fdbf914c6ef733a42f4113c8ac6c20b85bce238cd4d2c"
  end

  app "RetroTimer.app"
end
