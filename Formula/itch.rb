class Itch < Formula
  homepage "https://github.com/cmbartschat/itch"
  url "https://github.com/cmbartschat/itch/archive/refs/tags/v0.8.0.zip"
  sha256 "bc2d9ef6d5658932ca5e7692baf21b011d228499f1b22d210e37dc7444b630fa"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/itch"
  end

  test do
    assert_match "itch 0.8.0", shell_output("#{bin}/itch --version")
  end
end
