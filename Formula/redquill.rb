class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.21.0/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "0da99616061642b29121bc27b80f1a4e1e163657b37b7a9bdf449b449706f8c6"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.21.0/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "17be305726db1276fbbadae6f109e7d411ca680a53a64da62e36328a9cf567b4"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
