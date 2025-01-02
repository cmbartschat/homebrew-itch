class Itch < Formula
  homepage "https://github.com/cmbartschat/itch"
  url "https://github.com/cmbartschat/itch/archive/refs/tags/v0.4.0.zip"
  sha256 "28eacbefc480bcdec4d1dc6135aa91eec8380e297eb37d9fb84f0eb5351d2157"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/itch"
  end

  test do
    assert_match "itch 0.4.0", shell_output("#{bin}/itch --version")
  end
end
