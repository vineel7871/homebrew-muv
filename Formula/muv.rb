class Muv < Formula
  desc "Global environment management tool using uv"
  homepage "https://github.com/vineel7871/muv"
  version "0.1.6"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vineel7871/muv/releases/download/v0.1.6/muv-macos-arm64.tar.gz"
      sha256 "b75d80a9e8990d2c1a17968b3b1c3b05bbf422a613a0a6748a22242d87d29a5a"
    else
      url "https://github.com/vineel7871/muv/releases/download/v0.1.6/muv-macos-amd64.tar.gz"
      sha256 "6535b9f16e673877d2f41656ec1ec57218876f4c087db2cd0c9fadc9b83663de"
    end
  end

  def install
    bin.install "muv"
  end

  test do
    system "#{bin}/muv", "--version"
  end
end