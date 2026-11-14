# Homebrew formula for k10s. Generated from packaging/homebrew/k10s.rb.in by
# packaging/homebrew/render-formula.sh; lives in github.com/michaelzheng67/homebrew-tap.
class K10s < Formula
  desc "Kubernetes cluster viewer that draws your cluster as a village"
  homepage "https://github.com/michaelzheng67/k10s"
  url "https://github.com/michaelzheng67/k10s/releases/download/v0.1.2/k10s-0.1.2-macos-universal.tar.gz"
  sha256 "4e2bfea2a22638e0e32f581f97c21b70d4ce7e4c3612e3b6cbb10a0c7cad34a0"
  version "0.1.2"

  depends_on macos: :ventura

  def install
    bin.install "k10s"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/k10s --version")
  end
end
