cask "dkide" do
  version "1.1.0"

  url "https://github.com/dukeystudio/dkide/releases/download/v1.1.0/dkide_1.1.0_aarch64.dmg"
  sha256 "0ccef2187be9f22a1320747fd08c01482d76f88ed435d2365e9dd7435f762ab9"

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
