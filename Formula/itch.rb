class Itch < Formula
  homepage "https://github.com/cmbartschat/itch"
  url "https://github.com/cmbartschat/itch/archive/refs/tags/v0.9.0.zip"
  sha256 "f76bed57432273f1585d099b2775c88fe2d0a515a6fcc55d392395a86e23fe1b"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/itch"
  end

  test do
    assert_match "itch 0.9.0", shell_output("#{bin}/itch --version")
  end
end
