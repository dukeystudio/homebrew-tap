cask "dkide" do
  version "1.0.0"

  on_arm do
    url "https://github.com/dukeystudio/dkide/releases/download/v1.0.0/%E9%83%BD%E5%AE%A2AI%E5%8A%A9%E6%89%8B_1.0.0_aarch64.dmg"
    sha256 "d3c4bc557902b06214259d31d18026ef816e6e1a2e6c696cf3cc42ce886cffc7"
  end
  on_intel do
    url "https://github.com/dukeystudio/dkide/releases/download/v1.0.0/%E9%83%BD%E5%AE%A2AI%E5%8A%A9%E6%89%8B_1.0.0_x64.dmg"
    sha256 "44075d1df992f0716c1f53fd8d4c11b482fc1dbf07ec653253e78d2067cfe050"
  end

  name "都客AI助手"
  name "dkide"
  desc "Local-first desktop AI assistant with skills and tools"
  homepage "https://github.com/dukeystudio/dkide"

  app "都客AI助手.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-c", "com.apple.quarantine", "\#{appdir}/都客AI助手.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.dkide.app",
    "~/Library/Logs/dkide",
    "~/Library/Saved Application State/com.dkide.app.savedState",
  ]
end
