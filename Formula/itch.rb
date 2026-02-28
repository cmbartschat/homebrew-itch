class Itch < Formula
  homepage "https://github.com/cmbartschat/itch"
  url "https://github.com/cmbartschat/itch/archive/refs/tags/v0.11.0.zip"
  sha256 "f96ffd9396a46390b991a38cc147911afbdc69060c749ae2702caa51bdb95331"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/itch"
  end

  test do
    assert_match "itch 0.11.0", shell_output("#{bin}/itch --version")
  end
end
