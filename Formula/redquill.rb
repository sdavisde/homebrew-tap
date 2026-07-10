class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.2.0/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "39d443ad7b8b3fa2669c2bd6c7f052e3d84d0cb534d8c9b0d99791d7ccad645e"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.2.0/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "8081128716b26d13f6e96378e1d41a248db2c42db7d01548044b9bd214096613"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
