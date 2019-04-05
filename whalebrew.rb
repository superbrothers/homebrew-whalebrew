class Whalebrew < Formula
  desc "Homebrew, but with Docker images"
  homepage "https://github.com/whalebrew/whalebrew"
  version "0.1.0"

  if OS.mac?
    url "https://github.com/whalebrew/whalebrew/releases/download/#{version}/whalebrew-Darwin-x86_64"
    sha256 "f7ac7999fc6e5c72ae7a65e1adaffc8db371fc7682b5c39a8f5f4f319f2625e8"
  else # linux
    url "https://github.com/whalebrew/whalebrew/releases/download/#{version}/whalebrew-Linux-x86_64"
    sha256 "f776cb3bc40fde0cd221e38159d2fa3a7933c4f8cf40a1dad257a09edb0e4af4"
  end

  def install
    bin.install Dir["whalebrew-*-x86_64"].first => "whalebrew"
  end
end
