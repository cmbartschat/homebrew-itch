class Itch < Formula
  homepage "https://github.com/cmbartschat/itch"
  url "https://github.com/cmbartschat/itch/archive/refs/tags/v0.7.0.zip"
  sha256 "f7c59e5e3cc8afc6e8ffed223f43d7be077a605339683c33b3e8705c89ffec60"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/itch"
  end

  test do
    assert_match "itch 0.7.0", shell_output("#{bin}/itch --version")
  end
end
