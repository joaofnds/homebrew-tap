cask "fleet" do
  version "1.9.237"

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
    sha256 "7d37983e2b8a0b7990809d552d3ae66140be07d611088245e70a3832a4b3ee58"
    url "https://download-cdn.jetbrains.com/fleet/installers/macos_x64/Fleet-#{version}.dmg"
  end

  on_arm do
    sha256 "4ae09f430913b03b4c876d99dbdfe6f6680dd9e9d7d58ee3c1b0e990e721d7a5"
    url "https://download-cdn.jetbrains.com/fleet/installers/macos_aarch64/Fleet-#{version}-aarch64.dmg"
  end
end
