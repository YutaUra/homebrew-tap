class Zyouz < Formula
  desc "A terminal multiplexer driven by a static config file"
  homepage "https://github.com/YutaUra/zyouz"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/YutaUra/zyouz/releases/download/v#{version}/zyouz-x86_64-macos.tar.gz"
      sha256 "f421f768e2589ceff68c053ffe8a2029bac9df07793383fb2d372057b03343b2"
    end

    on_arm do
      url "https://github.com/YutaUra/zyouz/releases/download/v#{version}/zyouz-aarch64-macos.tar.gz"
      sha256 "0109953780aaec0e8f401b84e1f4973dc5beb8be47df3385d85405b7f3bf3c40"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/YutaUra/zyouz/releases/download/v#{version}/zyouz-x86_64-linux.tar.gz"
      sha256 "0a0a468cc6055c033e2c3c673517150013b9ee51f6658a17d55aed00b7909b8e"
    end

    on_arm do
      url "https://github.com/YutaUra/zyouz/releases/download/v#{version}/zyouz-aarch64-linux.tar.gz"
      sha256 "137b617d2be0b58d95463dac8ad21102f931750d17bb7623008b6c572319eca6"
    end
  end

  def install
    bin.install "zyouz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zyouz --version")
  end
end
