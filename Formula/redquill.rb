class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.18.0/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "43f68af91ad47f81f13e89502a9a41ff9c5c6d79d191200b1c75330669adedc3"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.18.0/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "818b6cdf394fb9f29d48a5c1c45cb706eea8eebf91d226ee4c3ba6c4614054b3"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
