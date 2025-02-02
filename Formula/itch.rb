class Itch < Formula
  homepage "https://github.com/cmbartschat/itch"
  url "https://github.com/cmbartschat/itch/archive/refs/tags/v0.6.0.zip"
  sha256 "d18630909841f677dc99e1acdc44056043388913e2c54a333696cda2bfde5531"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/itch"
  end

  test do
    assert_match "itch 0.6.0", shell_output("#{bin}/itch --version")
  end
end
