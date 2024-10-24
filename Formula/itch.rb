class Itch < Formula
  homepage "https://github.com/cmbartschat/itch"
  url "https://github.com/cmbartschat/itch/archive/refs/tags/v0.2.0.zip"
  sha256 "9f532e18c916d40169b4d403d65a405b7b94d8f8685f1edae459cf8f33450762"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/itch"
  end

  test do
    assert_match "itch 0.2.0", shell_output("#{bin}/itch --version")
  end
end
