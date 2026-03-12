class Gati < Formula
  desc "Git AI commit message generator powered by LLM"
  homepage "https://github.com/YutaUra/gati"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/YutaUra/gati/releases/download/v#{version}/gati-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "f4d45f8dace89b82e0628c295a1576e59f1a31b48fcac2165aaf627f714e8fbe"
    end

    on_arm do
      url "https://github.com/YutaUra/gati/releases/download/v#{version}/gati-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "92d81debfc0c53e18fcdfdf0f8bff847a1021414f3eebbadb8576c6edf66bbc5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/YutaUra/gati/releases/download/v#{version}/gati-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d667612f66b33f39056adb1901b6086bb8e229b7be939bd1728ea09fc39efcd"
    end

    on_arm do
      url "https://github.com/YutaUra/gati/releases/download/v#{version}/gati-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "086dd4c11ab7d0d3956cc9c8fd92abab48566b50bdd6f29afe31c495cf1c23fa"
    end
  end

  def install
    bin.install "gati"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gati --version")
  end
end
