class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.10.0/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "7748985bfbccba21c9878d69c0774f07355d1ace26380366d9b6b3fd2a5a645d"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.10.0/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "4dd61619add1c5d44ca8b3023e38fcc4a43edbfc56f483942066754138a17c1f"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
