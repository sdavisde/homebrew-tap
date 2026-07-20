class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.17.0/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "c1304938617d21378c6cee3efff0d158b136fd5a9b5545339a74c5fbe91cfbd5"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.17.0/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "8d295a2ab4056bd2d5b9f137acf225a07db0f27307b6332f79ab5629f263bcab"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
