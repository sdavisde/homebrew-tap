class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.16.0/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "5c34b3faab7b47a29f7efe6fe09aa4333ea252db356d5f5845d732310f20ede3"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.16.0/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "4c33077d7d600ef8cf307fd35d57db46e82c434422ac4ad49a22b4d7332b17d7"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
