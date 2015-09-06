class Rsnapshot < Formula
  desc "File system snapshot utility (based on rsync)"
  homepage "http://rsnapshot.org"
  url "http://rsnapshot.org/downloads/rsnapshot-1.4.1.tar.gz"
  sha256 "fb4a1129a7d3805c41749fd0494debfe2ca2341eba0f8b50e4f54985efe448e8"

  head "https://github.com/DrHyde/rsnapshot.git"

  bottle do
    cellar :any
    sha256 "6f0086191066abd47c9dd489e1d0833175b645581f00e99f99e7cb0df3a0d8f2" => :yosemite
    sha256 "7f0d7508a38c74d7b4c0022d4e214e8f5179f397ce3860f879d4fffa41f86a15" => :mavericks
    sha256 "713d6da6fb78bb7c7f16fa03f22eebb7b7cfa0a9701030d062fab9efe0e544e3" => :mountain_lion
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--mandir=#{man}"
    system "make", "install"
  end
end
