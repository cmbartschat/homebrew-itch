class Itch < Formula
  homepage "https://github.com/cmbartschat/itch"
  url "https://github.com/cmbartschat/itch/archive/refs/tags/v0.8.1.zip"
  sha256 "4f9eacf59c9e3ca7a91e9dd8f993fa3ccbcea3dc81bf24ba24f817f97cd833e8"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/itch"
  end

  test do
    assert_match "itch 0.8.1", shell_output("#{bin}/itch --version")
  end
end
