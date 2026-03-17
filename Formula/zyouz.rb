class Zyouz < Formula
  desc "A terminal multiplexer driven by a static config file"
  homepage "https://github.com/YutaUra/zyouz"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/YutaUra/zyouz/releases/download/v#{version}/zyouz-x86_64-macos.tar.gz"
      sha256 "92ca28e9510b2826a89880b68051b16d436f475f7c8d780909463c0156569599"
    end

    on_arm do
      url "https://github.com/YutaUra/zyouz/releases/download/v#{version}/zyouz-aarch64-macos.tar.gz"
      sha256 "0e767a3825c2541eb17ac6fd3657724d5aa5ec6de056674d2fb58c3a8c132149"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/YutaUra/zyouz/releases/download/v#{version}/zyouz-x86_64-linux.tar.gz"
      sha256 "8a12fabf1eee8117d23299c689700fdd33c10979fddd9328d24bf1d585d1d00f"
    end

    on_arm do
      url "https://github.com/YutaUra/zyouz/releases/download/v#{version}/zyouz-aarch64-linux.tar.gz"
      sha256 "05850f17b66c2be1c96bebd02b422e13d959de283d3d3484dcc5d0f3d84396fd"
    end
  end

  def install
    bin.install "zyouz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zyouz --version")
  end
end
