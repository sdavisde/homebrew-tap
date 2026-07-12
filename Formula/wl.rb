class Wl < Formula
  desc "Keyboard-first worklog TUI"
  homepage "https://github.com/sdavisde/worklog"

  on_macos do
    on_arm do
      url "https://github.com/sdavisde/worklog/releases/download/v1.1.0/wl-aarch64-apple-darwin.tar.gz"
      sha256 "619eb8091d8693e016902f12089d38d812c1767508b06a9f7c744b51b87eeb16"
    end
    on_intel do
      url "https://github.com/sdavisde/worklog/releases/download/v1.1.0/wl-x86_64-apple-darwin.tar.gz"
      sha256 "4b36750674ed7cd67de070806031b60880a9aa75cbca34832233f416c9ea8317"
    end
  end

  def install
    bin.install "wl"
  end

  test do
    system "#{bin}/wl", "--version"
  end
end
