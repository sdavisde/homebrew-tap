class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.5.0/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "adfd1bda834312883c42344061e4bfff9079d79220da78875faedfb2a5431e80"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.5.0/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "3447af256a527ecc2f306bff90f36258228ac5a8c57ec4c69a649624c2dfd3d1"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
