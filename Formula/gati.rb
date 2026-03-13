class Gati < Formula
  desc "A terminal tool for reviewing code, not writing it"
  homepage "https://github.com/YutaUra/gati"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/YutaUra/gati/releases/download/v#{version}/gati-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e3122cc20897254ee218b5a2dcf0239c8a25e73897b9b395fa0b0682f9401c66"
    else
      url "https://github.com/YutaUra/gati/releases/download/v#{version}/gati-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b24fdac614661d09e12c7486cccc61be6d7ac5587cc2cee6fe1df372befae80e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/YutaUra/gati/releases/download/v#{version}/gati-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14c51a29ae2b7d101f0f85a8b22ae65b768d25e6fc720e4924ca52b27b0b9f62"
    else
      url "https://github.com/YutaUra/gati/releases/download/v#{version}/gati-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48fd1e41a060799410e1486883a447c6b9e094469f281b0ea89274951fb69501"
    end
  end

  def install
    bin.install "gati"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gati --version")
  end
end
