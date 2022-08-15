cask "defaults-edit" do

  version "1.4.5_1"

  sha256 "9ee9ebffb4f9d07450f901502d10a48e82b5f01f6a47d1ca462ad17e19c64373"

  url "https://github.com/ThatsJustCheesy/defaults-edit/releases/download/v#{version}/defaults-edit.v#{version.sub(%r{_\d+}, '')}.zip"
  name "Defaults edit"
  desc "Graphical user defaults editor for macOS"
  homepage "https://github.com/ThatsJustCheesy/defaults-edit"

  livecheck do
    url "https://github.com/ThatsJustCheesy/defaults-edit/releases/download"
    strategy :header_match
    regex(/v(\d+(?:\.\d+)*(?:_\d+)?)\/defaults\-edit\.v(\d+(?:\.\d+)*)\.zip/i)
  end

  app "Defaults edit.app"
end