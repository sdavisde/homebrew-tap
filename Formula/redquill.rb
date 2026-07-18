class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.14.0/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "67f4cd29fd901880f0f60cc80de9183d62f412c5a832a93e14313a41bd8f309a"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.14.0/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "081025583d18e3c9e40dda9aeed88ed530bf69d8be5609794ea10c6c7f138096"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
