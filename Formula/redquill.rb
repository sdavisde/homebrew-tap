class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.19.0/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "569146d75d150de6a6098aa38de80a06a558e5ffdabe6760cee066d9c1c93f06"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.19.0/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "00136a98571cad57471fc6b6b22a104c646a6d4ace6f4c96018eb48a6f07f9e8"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
