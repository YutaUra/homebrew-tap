class Gati < Formula
  desc "A terminal tool for reviewing code, not writing it"
  homepage "https://github.com/YutaUra/gati"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/YutaUra/gati/releases/download/v#{version}/gati-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ad3df95ce150bae60569c9965aa34c9946006a7c0ef038722be32fc1a1e93961"
    else
      url "https://github.com/YutaUra/gati/releases/download/v#{version}/gati-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5e6906d0c890e113c4059de994e70287f0895cda21143e8830ce2a1326fc79e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/YutaUra/gati/releases/download/v#{version}/gati-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec3039df4d699170f662339d55e298442565fd0e0e28c7fe1b8c83c636cac991"
    else
      url "https://github.com/YutaUra/gati/releases/download/v#{version}/gati-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b84ec49b9eeda96a243d75b90f44a2d5c4703ebbb428e5d49e478710e14dd23f"
    end
  end

  def install
    bin.install "gati"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gati --version")
  end
end
