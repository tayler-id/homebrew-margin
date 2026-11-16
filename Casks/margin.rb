cask "margin" do
  version "0.1.7"
  sha256 "0e49a92b09bc405bfe647c37862a77dc2f6c84d76ef6cd1bde6b003e91b92d99"

  url "https://github.com/tayler-id/margin-releases/releases/download/v#{version}/Margin-#{version}.zip"
  name "Margin"
  desc "Menu bar Markdown notebook"
  homepage "https://github.com/tayler-id/margin-releases"

  auto_updates true
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
