class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.12.0/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "a92ad75fdfb6020df39ff016afd6068d7e39e3e47492b921bdfd1c7d7f8eb026"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.12.0/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "49cdb4be6ab49195cf0fd31bd8b0f5368ed566f6f4d6db9289f88f93e5028c6f"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
