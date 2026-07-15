class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.9.0/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "070f00e16c626dc47a13f998f880b231143318d620e3c3a96e7601c62514a362"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.9.0/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "c3701d021529823cd30e15d70817c0fdf9c4006d9aced856cc114fb5805ff95c"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
