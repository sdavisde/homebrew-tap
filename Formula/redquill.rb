class Redquill < Formula
  desc "Terminal UI for reviewing agentic code diffs"
  homepage "https://github.com/sdavisde/redquill"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/redquill/releases/download/v0.13.0/redquill-aarch64-apple-darwin.tar.gz"
      sha256 "a55c356a228ea7cc7f07cf155116a48f1c8e2bbc12dd48d72a9255cd0ba1a65e"
    end
    on_intel do
      url "https://github.com/sdavisde/redquill/releases/download/v0.13.0/redquill-x86_64-apple-darwin.tar.gz"
      sha256 "1234592e079c2ddba97111ef0c3152079cd0df332e570942bbd6983f1ae365c3"
    end
  end

  def install
    bin.install "redquill"
  end

  test do
    system "#{bin}/redquill", "--version"
  end
end
