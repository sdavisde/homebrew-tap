class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.8.0/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "8653ff89c52942790347978e43bb68bcaa6705e5c64599f242b4f5399084f98d"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.8.0/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "5e142d0c62c63421a0fdcfd46607eff1ee92982b2fe534fba8272b567e36b110"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
