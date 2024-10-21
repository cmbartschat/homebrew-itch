class Itch < Formula
  homepage "https://github.com/cmbartschat/itch"
  url "https://github.com/cmbartschat/itch/archive/refs/tags/v0.1.0.zip"
  sha256 "efa85e129bdfcae01ab0d5ec6fd885026bc47476f8cb394f2a1e239513e4ff28"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/itch"
  end

  test do
    assert_match "itch 0.1.0", shell_output("#{bin}/itch --version")
  end
end
