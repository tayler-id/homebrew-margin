cask "margin" do
  version "0.1.9"
  sha256 "8809f0de8bb851720f8e45171f97b7691645a6f22eda959d854d67234ae3a233"

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
