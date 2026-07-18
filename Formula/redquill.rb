class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.15.0/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "eb5ceb3baab86789a8b90d593b3bc167c0206b7fd046325366c4d5a3e8c12d99"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.15.0/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "877c7fcb0262e4bf4f9277768f9dad6ddbefcbaec32171fccb62d2670d17d8a9"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
