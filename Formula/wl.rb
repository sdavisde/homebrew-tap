class Wl < Formula
  desc "Keyboard-first worklog TUI"
  homepage "https://github.com/sdavisde/worklog"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/worklog/releases/download/v1.3.0/wl-aarch64-apple-darwin.tar.gz"
      sha256 "9525eab7b52801ceac325a534b7e0216528a9a531d5b13a99eadd8a2f7961916"
    end
    on_intel do
      url "https://github.com/sdavisde/worklog/releases/download/v1.3.0/wl-x86_64-apple-darwin.tar.gz"
      sha256 "3b19a775237ea5b2d0539e4166c593d8ef2d2eefb880dd61a715c8ee8ed695cb"
    end
  end

  def install
    bin.install "wl"
  end

  test do
    system "#{bin}/wl", "--version"
  end
end
