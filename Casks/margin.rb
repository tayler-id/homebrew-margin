cask "margin" do
  version "0.1.1"
  sha256 "1d908cd1afd83826b0706d557b7316c48b178138011c3899199504bd2c6b7028"

  url "https://github.com/tayler-id/margin-releases/releases/download/v#{version}/Margin-#{version}.zip"
  name "Margin"
  desc "Menu bar Markdown notebook"
  homepage "https://github.com/tayler-id/margin-releases"

  depends_on macos: :tahoe

  app "Margin.app"
  binary "#{appdir}/Margin.app/Contents/Helpers/margin"

  uninstall quit: "com.tayler.margin"

  zap trash: [
    "~/Library/Application Support/Margin",
    "~/Library/Caches/com.tayler.margin",
    "~/Library/Preferences/com.tayler.margin.plist",
    "~/Library/WebKit/com.tayler.margin",
  ]
end
