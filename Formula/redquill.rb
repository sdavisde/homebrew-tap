class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.20.1/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "b742d40e1097eb1ab06c61f2fedbce28e0efeeb19e951ff83613ec4c3dd9308f"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.20.1/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "b5763f055565a5db31099a75e120093707a6124f8fbfa3e4d88880cf9f966c6f"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
