class Itch < Formula
  homepage "https://github.com/cmbartschat/itch"
  url "https://github.com/cmbartschat/itch/archive/refs/tags/v0.10.0.zip"
  sha256 "c229201d86949c095a20ce4e47772057f4b746a15b30de4f7f432330b340eaa7"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/itch"
  end

  test do
    assert_match "itch 0.10.0", shell_output("#{bin}/itch --version")
  end
end
