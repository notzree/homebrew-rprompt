class Rprompt < Formula
  desc "A CLI tool for managing and generating prompts"
  homepage "https://github.com/notzree/rprompt"
  version "0.1.0" # Update this with your actual version

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/notzree/rprompt/releases/download/v0.1.2/rprompt-darwin-arm64.tar.gz"
    sha256 "7c5db8e41c59d465dd9cd4bef2aef87fa1bf5e1e6b4321daf374c7bcee9bb85e"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/notzree/rprompt/releases/download/v0.1.2/rprompt-darwin-amd64.tar.gz"
    sha256 "a07b629a00ef8482ea29878eac139c376c4c888eabe12785b52165fea7cd5d04"
  end

  def install
    bin.install "rprompt"
  end

  test do
    system "#{bin}/rprompt", "--help"
  end
end
