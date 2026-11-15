cask "margin" do
  version "0.1.5"
  sha256 "85cb271517123a8ec2654c6f6f283e0b535d1fbbc52fdd7ef1252efa2efaeb73"

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
