class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.6.0/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "44a7350f7ee2cd0f49fab90ae01df9d8c08059718b5d1042832e0501048ff714"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.6.0/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "53fac551c28de5c3553203de485ea011172e8f90e46fcc34914fc7e358b3380d"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
