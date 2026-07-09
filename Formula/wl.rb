class Wl < Formula
  desc "Keyboard-first worklog TUI"
  homepage "https://github.com/sdavisde/worklog"
  version "0.1.2"

  # The old worklog-cli tap also installs a `wl` binary.
  conflicts_with "worklog-cli", because: "both install a `wl` binary"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/worklog/releases/download/v0.1.2/wl-aarch64-apple-darwin.tar.gz"
      sha256 "13053df7f4722e90e7e44dd52cb52c21aa8139217c4a68d71dab2961caf6013c"
    end
    on_intel do
      url "https://github.com/sdavisde/worklog/releases/download/v0.1.2/wl-x86_64-apple-darwin.tar.gz"
      sha256 "f002112a8620d404900b37ee08ab0469eb5555b2ce57cd2fad1812ad3e23d917"
    end
  end

  def install
    bin.install "wl"
  end

  test do
    system "#{bin}/wl", "--version"
  end
end
