class Wl < Formula
  desc "Keyboard-first worklog TUI"
  homepage "https://github.com/sdavisde/worklog"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/worklog/releases/download/v1.0.0/wl-aarch64-apple-darwin.tar.gz"
      sha256 "d8fc82e22ae597a2892c235c233e4b4704f81c91358d949e927770a7aa4f3392"
    end
    on_intel do
      url "https://github.com/sdavisde/worklog/releases/download/v1.0.0/wl-x86_64-apple-darwin.tar.gz"
      sha256 "fc64f4fbe022d488d27c588f0e3399f47c33bdd477c00e9c72d361aea312d1e6"
    end
  end

  def install
    bin.install "wl"
  end

  test do
    system "#{bin}/wl", "--version"
  end
end
