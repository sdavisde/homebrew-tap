class Wl < Formula
  desc "Keyboard-first worklog TUI"
  homepage "https://github.com/sdavisde/worklog"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/worklog/releases/download/v0.3.0/wl-aarch64-apple-darwin.tar.gz"
      sha256 "5c50b423d4033726fd3b948f22e460d0db8db5cdc055dd5116526388fa620383"
    end
    on_intel do
      url "https://github.com/sdavisde/worklog/releases/download/v0.3.0/wl-x86_64-apple-darwin.tar.gz"
      sha256 "9ccfdf02e5b6af456d9cd102bb56c51d95ccf7468ab8fd2cceeb05b73e828845"
    end
  end

  def install
    bin.install "wl"
  end

  test do
    system "#{bin}/wl", "--version"
  end
end
