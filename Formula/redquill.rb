class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.20.0/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "28576c919fb86b4b074b812454cd744a17a919ce1b0962f362b040ef1d976dd0"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.20.0/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "e03c11831215489906b556fe1e717e76968260c0a37965d91d2b3e42ad899d8c"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
