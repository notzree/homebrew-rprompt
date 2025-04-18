class Rprompt < Formula
  desc "A CLI tool for managing and generating prompts"
  homepage "https://github.com/notzree/rprompt"
  version "0.1.0" # Update this with your actual version

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/notzree/rprompt/releases/download/v0.1.0/rprompt-darwin-arm64.tar.gz"
    sha256 "8276126b118726e8a6da99a10832e43721d4ef2564fd8d019f0732fddfb5eb92"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/notzree/rprompt/releases/download/v0.1.0/rprompt-darwin-amd64.tar.gz"
    sha256 "87a572eb952bf50fa7d3dd4a5df8266e26e9d13d807220ce6e69d7822ccdbbdf"
  end

  def install
    bin.install "rprompt"
  end

  test do
    system "#{bin}/rprompt", "--help"
  end
end
