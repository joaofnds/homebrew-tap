cask "fleet" do
  version "1.10.189"

  app "Fleet.app"
  name "JetBrains Fleet"
  desc "Next-generation IDE by JetBrains"
  homepage "https://www.jetbrains.com/fleet/"

  livecheck do
    url "https://data.services.jetbrains.com/products?code=FL&latest=true&type=preview"
    strategy :page_match do |page|
      JSON.parse(page)[0]["releases"].map { |v| v["version"] }
    end
  end

  on_intel do
    sha256 "ff36e9b06d684787f1bea3e25d9ef04076c84b820ed0a3abb909c4787e485555"
    url "https://download-cdn.jetbrains.com/fleet/installers/macos_x64/Fleet-#{version}.dmg"
  end

  on_arm do
    sha256 "30d3ec5289ca98b4e4610d450ff596dfdaab28c28b13dbfc254b6d33020f46ea"
    url "https://download-cdn.jetbrains.com/fleet/installers/macos_aarch64/Fleet-#{version}-aarch64.dmg"
  end
end
