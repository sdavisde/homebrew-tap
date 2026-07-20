class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.17.1/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "b67a6e1401e7afa409a848f630895248c580c8e834d1a326bad4149e6da9d504"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.17.1/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "0fa058081e70f99fce460e3db8ece303def441578e375af35f665828f7f1ca04"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
