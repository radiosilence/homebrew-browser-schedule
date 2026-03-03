cask "browser-schedule" do
  version "1.3.2"
  sha256 "a34f5f4d0c668138334b9592c7e7e1c16bb62daa0278cb76070adec9189b74d6"

  url "https://github.com/radiosilence/browser-schedule/releases/download/v#{version}/BrowserSchedule.dmg"
  name "BrowserSchedule"
  desc "Automatic browser switching based on time, day, and URL patterns"
  homepage "https://github.com/radiosilence/browser-schedule"

  depends_on macos: ">= :sonoma"

  app "BrowserSchedule.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/BrowserSchedule.app"]
  end

  zap trash: [
    "~/.config/browser-schedule",
  ]
end
