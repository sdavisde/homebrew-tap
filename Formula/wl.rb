class Wl < Formula
  desc "Keyboard-first worklog TUI"
  homepage "https://github.com/sdavisde/worklog"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/worklog/releases/download/v0.2.0/wl-aarch64-apple-darwin.tar.gz"
      sha256 "58b65c84858140cce3058d5db81b88166c0a90a30c2ef7482a7a9dcbc5d35bb8"
    end
    on_intel do
      url "https://github.com/sdavisde/worklog/releases/download/v0.2.0/wl-x86_64-apple-darwin.tar.gz"
      sha256 "94448b7dce675e838800d490f69ea306cddd6def89ad2ccfc1c5f3b181a0f21a"
    end
  end

  def install
    bin.install "wl"
  end

  test do
    system "#{bin}/wl", "--version"
  end
end
