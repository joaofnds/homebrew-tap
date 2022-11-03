cask "fleet" do
  version "1.10.192"

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
    sha256 "fcbb983eb279c100d95ac7124465bac9acd2a84969b06504c66fb80bb653bb21"
    url "https://download-cdn.jetbrains.com/fleet/installers/macos_x64/Fleet-#{version}.dmg"
  end

  on_arm do
    sha256 "78d29195a66c6c33c4f30204dc27a1e904d5ed16b25d6ff9e6e70c4ed70d9eae"
    url "https://download-cdn.jetbrains.com/fleet/installers/macos_aarch64/Fleet-#{version}-aarch64.dmg"
  end
end
