class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.4.1/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "8245e5c8cf8eaabb42f8d9ebe3f5a76b1989486af9865b5ff46e2778da26af3f"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.4.1/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "4a0eccf0381464ee716de818eb570661ff37298e55097d735152f593063f9ac3"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
