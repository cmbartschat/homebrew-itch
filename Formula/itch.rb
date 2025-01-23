class Itch < Formula
  homepage "https://github.com/cmbartschat/itch"
  url "https://github.com/cmbartschat/itch/archive/refs/tags/v0.5.1.zip"
  sha256 "c9d9d970fe31776fefccfe9f9629ad4307caaa19901c8f7ff0c73ab8497550f0"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/itch"
  end

  test do
    assert_match "itch 0.5.1", shell_output("#{bin}/itch --version")
  end
end
