class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.11.0/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "e8fb5817a233123682ff93def18d7e77ff1735835a636664cea65a718f22f5e9"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.11.0/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "fc0c77f4542068ca08611d597d92ab396c6be99baa6ea6600c074ae933246422"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
