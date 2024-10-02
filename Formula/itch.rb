class Itch < Formula
  homepage "https://github.com/cmbartschat/itch"
  url "https://hmncl.us/file/itch-2024-10-01.zip"
  sha256 "4080e7d24b6d31cac47d83877d8afaa893aed48cd6fd00540b8290c60bf8f6dc"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/itch"
  end

  test do
    assert_match "itch 0.1.0", shell_output("#{bin}/itch --version")
  end
end
