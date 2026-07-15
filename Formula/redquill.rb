class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.7.0/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "9512c7ac327414b4582ece9278ded5b8bc88dd71ad137d1d6ab6402ade7def6f"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.7.0/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "689286ea5370c6db7904c12fcb53c2fe31535d26cdc880e72be4d897092c6627"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
