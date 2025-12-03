class Jag < Formula
  desc "JSON Aggregator & Merger: A smart wrapper around jq"
  homepage "https://github.com/khodaparastan/jag"
  url "https://github.com/khodaparastan/jag/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "844af96f987c0dea6857b8053f6cd848c873928985d22f30a43eaefddfbc96ba"
  license "MIT"

  depends_on "jq"
  depends_on "parallel" => :optional

  def install
    bin.install "jag"
  end

  test do
    system "#{bin}/jag", "--version"
  end
end
