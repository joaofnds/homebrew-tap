cask "fleet" do
  version "1.9.231"

  app "Fleet.app"
  name "JetBrains Fleet"
  desc "Next-generation IDE by JetBrains"
  homepage "https://www.jetbrains.com/fleet/"

  livecheck do
    url "https://data.services.jetbrains.com/products?code=FL&latest=true&type=preview"
    strategy :page_match do |page|
      JSON.parse(page)[0]["releases"][0]["version"]
    end
  end

  on_intel do
    sha256 "11f6b4eb6e1e58134553afb9681734d74618ae9e3efc861b03eae4260506af4d"
    url "https://download-cdn.jetbrains.com/fleet/installers/macos_x64/Fleet-#{version}.dmg"
  end

  on_arm do
    sha256 "01818acef0d3f6463780096a56efb4c734f22d2e199c18bd4f82fbfd4f770f3c"
    url "https://download-cdn.jetbrains.com/fleet/installers/macos_aarch64/Fleet-#{version}-aarch64.dmg"
  end
end
