cask "margin" do
  version "0.1.4"
  sha256 "5272b1720559e60637a9c677979a2aa7a0d11976d47229b63bca4d23e9ee1a52"

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
