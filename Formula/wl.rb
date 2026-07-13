class Wl < Formula
  desc "Keyboard-first worklog TUI"
  homepage "https://github.com/sdavisde/worklog"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/worklog/releases/download/v1.2.0/wl-aarch64-apple-darwin.tar.gz"
      sha256 "150e7dd6f14f2faf007abcd557e89b0b202c1583a6abac520dbcc0a597560f3e"
    end
    on_intel do
      url "https://github.com/sdavisde/worklog/releases/download/v1.2.0/wl-x86_64-apple-darwin.tar.gz"
      sha256 "0d4fd9fbdfcad3c318454fa1a3dd230b83e246e5a023e9af336d8c3537af4f2d"
    end
  end

  def install
    bin.install "wl"
  end

  test do
    system "#{bin}/wl", "--version"
  end
end
