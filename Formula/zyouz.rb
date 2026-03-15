class Zyouz < Formula
  desc "A terminal multiplexer driven by a static config file"
  homepage "https://github.com/YutaUra/zyouz"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/YutaUra/zyouz/releases/download/v#{version}/zyouz-x86_64-macos.tar.gz"
      sha256 "7a20a891b963499413bc42c9b39c4cc2fcc7897f54043860de1124afe28ac55a"
    end

    on_arm do
      url "https://github.com/YutaUra/zyouz/releases/download/v#{version}/zyouz-aarch64-macos.tar.gz"
      sha256 "977104d08e7f5344c88a6da5bdf56b11dcabfcf5a0e10e34f4c49b395c5189ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/YutaUra/zyouz/releases/download/v#{version}/zyouz-x86_64-linux.tar.gz"
      sha256 "60b8c3acb67c4f1b94fcd583b453d8a410929f37492aceffd137eaf05c0140f2"
    end

    on_arm do
      url "https://github.com/YutaUra/zyouz/releases/download/v#{version}/zyouz-aarch64-linux.tar.gz"
      sha256 "72e1ed9c9a2c9c2375ec8654176418c7a80054134d96f05f69c0895e0a771de9"
    end
  end

  def install
    bin.install "zyouz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zyouz --version")
  end
end
