class Fortune < Formula
  desc "Infamous UNIX fortune program"
  homepage "http://bxr.su/OpenBSD/games/fortune/"
  url "https://github.com/shlomif/fortune-mod/archive/refs/tags/fortune-mod-3.24.0.tar.gz"
  sha256 "5b70d3ec5d5d56e6a7c9decd452f2e27a1be91cfda4e8bdb9b32798709c1e881"
  license "BSD-4-Clause"

  def install
    system "make", "OFFENSIVE=1"
    bin.install "fortune"
    share.install "datfiles"
  end

  test do
    system "bin/fortune"
  end
end
