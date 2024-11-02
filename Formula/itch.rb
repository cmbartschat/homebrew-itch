class Itch < Formula
  homepage "https://github.com/cmbartschat/itch"
  url "https://github.com/cmbartschat/itch/archive/refs/tags/v0.3.0.zip"
  sha256 "6f18412bba1cde95e6bd4698cd15809e38d362b0ab9de25af2cccde0fd94ce2b"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/itch"
  end

  test do
    assert_match "itch 0.3.0", shell_output("#{bin}/itch --version")
  end
end
