class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.17.2/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "03561b1a6f9549baa99a99587eb5918f8ea484b8659bda7caa9980be4d850b91"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.17.2/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "954840965d92bfb9b78cb6470f5bb5513c30feccc84bca3de823d067abf404a3"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
