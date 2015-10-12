class Atomeye < Formula
  desc "AtomEye: atomistic configuration viewer"
  homepage "http://li.mit.edu/Archive/Graphics/A/index.html"
  version "2.2"

  if Hardware.is_64_bit?
    @@arch = "DarwinIntelx86_64"
    sha256 "c2166d1cbc14733ee9918ccaece8c0fbf680fbbb74d4754563e8378cd7834c08"
  else
    @@arch = "DarwinIntel386"
    sha256 "98d5abc6414d045abc32ee48e317347b2300417e32048f99254cd018fdd39192"
  end
  url "http://li.mit.edu/Archive/Graphics/A/Download/A.#{@@arch}"

  def install
    bin.install Dir["*"]
    bin.install_symlink "A.#{@@arch}" => "atomeye"
  end
end
