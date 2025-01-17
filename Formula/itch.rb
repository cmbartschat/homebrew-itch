class Itch < Formula
  homepage "https://github.com/cmbartschat/itch"
  url "https://github.com/cmbartschat/itch/archive/refs/tags/v0.5.0.zip"
  sha256 "b8f6ed381394818c4e64d23798205df91f970d9d04289fdd693f24518c3f30db"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/itch"
  end

  test do
    assert_match "itch 0.5.0", shell_output("#{bin}/itch --version")
  end
end
