class Gati < Formula
  desc "A terminal tool for reviewing code, not writing it"
  homepage "https://github.com/YutaUra/gati"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/YutaUra/gati/releases/download/v#{version}/gati-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8c67fc0cff1adefe484b5c05de14399b19fd5315923f070b5c44be4e17ef176a"
    else
      url "https://github.com/YutaUra/gati/releases/download/v#{version}/gati-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "59e1ba8a45598366e40f36e83fe15ab46a889c6f256423b39d6187d4a5e0027f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/YutaUra/gati/releases/download/v#{version}/gati-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "91ec08c41dcd79e0bd7983e67f4ef1302233377aff5087480f76907716b39be6"
    else
      url "https://github.com/YutaUra/gati/releases/download/v#{version}/gati-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80e6f0ee8b9a668be005935ffa2b727d472c4392cd7f9f3d8c8158db40ccb4a2"
    end
  end

  def install
    bin.install "gati"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gati --version")
  end
end
