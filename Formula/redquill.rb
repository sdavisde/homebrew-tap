class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.11.1/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "b8c8bacd337e62a6cab4405e7d796155bac6da34b867efed8b9d677899b04116"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.11.1/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "82d39aa93b3ba7b8493576b3e2acff57d3a04c05c7ec8c604192d360fa908b41"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
