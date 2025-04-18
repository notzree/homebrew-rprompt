class Rprompt < Formula
  desc "A CLI tool for managing and generating prompts"
  homepage "https://github.com/notzree/rprompt"
  version "0.1.0" # Update this with your actual version

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/notzree/rprompt/releases/download/v0.1.1/rprompt-darwin-arm64.tar.gz"
    sha256 "058f00da84f4624f4656a920df0d1f48a3cfec8c181c86b5ea2805afbab4acb1"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/notzree/rprompt/releases/download/v0.1.1/rprompt-darwin-amd64.tar.gz"
    sha256 "ab4dfcb1df0d3c6fb19ffc22dd8f0960d8faa7714f378c1769b122bfdd4dc10e"
  end

  def install
    bin.install "rprompt"
  end

  test do
    system "#{bin}/rprompt", "--help"
  end
end
