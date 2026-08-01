class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.21.1/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "2d7e157f94484403c8d9ad1a7765094383320224ca9103238bf666b49fe65fbe"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.21.1/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "6fa4571641a1028a6520c22adb4977448a136ceae8e4dd5e8be25137f5f57649"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
