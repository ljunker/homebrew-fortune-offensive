class Fortune < Formula
  desc "Infamous UNIX fortune program"
  homepage "http://bxr.su/OpenBSD/games/fortune/"
  url "https://github.com/shlomif/fortune-mod/archive/refs/tags/fortune-mod-3.24.0.tar.gz"
  sha256 "0cb889a124994377190800b2d70cf2254791049c8ba55d7570f91936d38c85ad"
  license "BSD-4-Clause"

  def install
    system "make OFFENSIVE=1"
    bin.install "fortune"
    share.install "datfiles"
  end

  test do
    system "bin/fortune"
  end
end
